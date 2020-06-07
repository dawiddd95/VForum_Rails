class RepliesConstroller < ApplicationController
   before_action :authenticate_user!
   before_action :set_reply, only: [:edit, :update, :destroy, :show]
   before_action :set_discussion, expect: [:index, :new]

   def create
      @reply = @discussion.replies.create(params[:reply]).permit(:reply, :discussion_id)
      @reply.user_id = current_user

      respond_to do |format|
         if @reply.save
            format.html { redirect_to discussion_path(@discussion) }
            format.js renders create.js.erb
         else
            format.html { redirect_to discussion_path(@discussion), notice: 'Reply did not save. Please try again' }
      end
   end

   def new
   end

   def destroy 
      @reply = @discussion.replies.find(params[:id])
      @reply.destroy
      redirect_to discussion_path(@discussion)
   end

   def edit
      @reply = @discussion.replies.find(params[:id])
   end

   def update
      @reply = @discussion.replies.find(params[:id])
      respond_to do |format|
         if @reply.update(reply_params)
            format.html { redirect_to discussion_path(@discussion), notice: 'Reply was succesfully updated' }
         else
            format.html { render: 'edit' }
            format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
   end
   
   private

   def set_discussion
      @discussion = Discussion.find(params[:discussion_id])
   end

   def set_reply
      @reply = Reply.find(params[:id])
   end

   def reply_params
      params.require(:reply).permit(:reply)
   end

end