class TasksController < ApplicationController
#    before_action :set_task, only: [:show, :destroy]
    def index
        @tasks = Task.all
        #@tasks = Task.where(user: current_user)
    end

    def show
        @task = Task.find(params[:id])
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        @task.user = current_user
        @task.complete = false
        if @task.save!
            redirect_to task_path(@task), notice: "New Task Saved"
        else
            render :new
        end
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        if @task.update_attributes(task_params)
            redirect_to tasks_path(@task), notice: "Task Edited"
        else
            render :edit
        end
    end

    private
    def task_params
        params.require(:task).permit(:description, :contact, :priority, :date_time, :ownership, :complete, :category)
    end

end
