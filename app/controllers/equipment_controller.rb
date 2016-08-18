class EquipmentController < ApplicationController
	 before_action :before_checks, only: [ :update, :destroy]

	def index
		@equipment = Equipment.all
	end

	def show
		@equipment = Equipment.all
	end

	def new
		@equipment = Equipment.new
	end

	def create
		@equipment = Equipment.create(equipment_params)
		respond_to do |format|
      if @equipment.save
        format.html { redirect_to @equipment, notice: 'New item of equipment was successfully created.' }
        format.json { render :show, status: :created, location: @equipment }
      else
        format.html { render :new }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
	end

	def edit
		@equipment = Equipment.find(params[:id])
	end

	def update
    respond_to do |format|
      if @equipment.update(equipment_params)
        format.html { redirect_to @equipment, notice: 'Equipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipment }
      else
        format.html { render :edit }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end




	def destroy
		@equipment.destroy 
		respond_to do |format|
    	format.html { redirect_to equipment_url, notice: 'Item successfully deleted.' }
    end
	end

	private
	def equipment_params
      params.require(:equipment).permit(:name, :equipment_type, :serial_no, :status, :employee)
  end

  def before_checks
  	@equipment = Equipment.find(params[:id])
  end



end
