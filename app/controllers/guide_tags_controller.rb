class GuideTagsController < ApplicationController
  def create
    @guide_tag = GuideTag.create(guide_id: params[:guide_id], tag_id: params[:tag_id])
    # raise
  end

  def destroy
    @guide_tag = guideTag.find(params[:id])
    @guide_tag.destroy
  end
end
