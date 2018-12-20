class MyClassesController < ApplicationController
  before_action :set_my_class, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]


  # GET /my_classes
  # GET /my_classes.json
  def index
    @my_classes = MyClass.all
  end

  # GET /my_classes/1
  # GET /my_classes/1.json
  def show
  end

  # GET /my_classes/new
  def new
    @my_class = MyClass.new
  end

  # GET /my_classes/1/edit
  def edit
  end

  # POST /my_classes
  # POST /my_classes.json
  def create
    @my_class = MyClass.new(my_class_params)
    @my_class.user = current_user

    respond_to do |format|
      if @my_class.save
        format.html { redirect_to @my_class, notice: 'My class was successfully created.' }
        format.json { render :show, status: :created, location: @my_class }
      else
        format.html { render :new }
        format.json { render json: @my_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_classes/1
  # PATCH/PUT /my_classes/1.json
  def update
    respond_to do |format|
      if @my_class.update(my_class_params)
        format.html { redirect_to @my_class, notice: 'My class was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_class }
      else
        format.html { render :edit }
        format.json { render json: @my_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_classes/1
  # DELETE /my_classes/1.json
  def destroy
    @my_class.destroy
    respond_to do |format|
      format.html { redirect_to my_classes_url, notice: 'My class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_class
      @my_class = MyClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_class_params
      params.require(:my_class).permit(:title)
    end
end
