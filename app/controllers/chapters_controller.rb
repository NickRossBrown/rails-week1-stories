class ChaptersController < ApplicationController

  def new
    binding.pry
    @story = Story.find(params[:story_id])
    @chapter = @story.chapters.new
  end

  def create
    @story = Story.find(params[:story_id])
    @chapter = @story.chapters.new(chapter_params)
    if @chapter.save
      redirect_to story_path(@chapter.story)
    else
      render :new
    end
  end

  def edit
    @story = Story.find(params[:story_id])
    @chapter = Chapter.find(params[:id])
  end

  def update
    @chapter = Chapter.find(params[:id])
    if @chapter.update(chapter_params)
      redirect_to story_path(@chapter.story)
    else
      render :edit
    end
  end

  def destroy
    @chapter= Chapter.find(params[:id])
    @chapter.destroy
    redirect_to story_path(@chapter.story)
  end

private
  def chapter_params
    params.require(:chapter).permit(:description)
  end

end