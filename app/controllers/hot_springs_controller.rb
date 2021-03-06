class HotSpringsController < ApplicationController

    before_action :authenticate_user!, only: [:show]

    def new
        @hot_spring = HotSpring.new
    end

    def create
        @hot_spring = HotSpring.new(hot_spring_params)
        @hot_spring.user_id = current_user.id
        @hot_spring.total_rate = @hot_spring.rate
        if @hot_spring.save
            redirect_to hot_springs_path #成功の場合
        else        
            render 'new' #失敗の場合 
        end
    end

    def show
        @hot_spring = HotSpring.find(params[:id])
        @comment = Comment.new
        if @hot_spring.comments.any?
        @user_rates = @hot_spring.comments.average(:rate).round(1)
        else
        @user_rates = 0
        @hot_spring.total_rate=@hot_spring.rate
        end
        #   sum=0
        #   @hot_spring.comments.each do |comment|
        #     sum+=comment.rate
        #   end
        #   @users_rate=sum/(@hot_spring.comments.count).to_f
        #   @hot_spring.total_rate=((@users_rate+@hot_spring.rate)/2).to_f
        # else
        #   @users_rate = 0
        #   @hot_spring.total_rate=@hot_spring.rate
        # end
    
    end

    def index
        @result = @search.result(distinct: true).page(params[:page]).per(5).order(created_at: "DESC")
        @hot_springs = HotSpring.page(params[:page]).per(5).order(created_at: "DESC")
        
    end

    def ranking
        @ranking = HotSpring.page(params[:page]).per(5).order(total_rate: "DESC")

    end

    def edit
        @hot_spring = HotSpring.find(params[:id])
    end

    def update
        @hot_spring = HotSpring.find(params[:id])
        @hot_spring.update(hot_spring_params)
        redirect_to hot_spring_path(@hot_spring.id)
    end

    def destroy
        @hot_spring = HotSpring.find(params[:id])
        @hot_spring.destroy
        redirect_to root_path
    end

    private
    def hot_spring_params
        params.require(:hot_spring).permit(:prefecture_id, :name, :address, :hot_spring_status, :rate, :image, :remarks, :review, :adult_price, :child_price, :start_hours, :start_minutes, :end_hours, :end_minutes,)
    end
end

