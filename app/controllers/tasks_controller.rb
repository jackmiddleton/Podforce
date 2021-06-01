class TasksController < ApplicationController
#    before_action :set_task, only: [:show, :destroy]
    def index
        @tasks = Task.all
    end

    def show
        @task = Task.find(params[:id])
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        if @task.save
            redirect_to tasks_path(@task), notice: "New Task Saved"
        else
            render :new
        end
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
    end

    private
    def task_params
        params.require(:task).permit(:description, :priority, :date_time, :ownership, :complete, :category)
    end

end
