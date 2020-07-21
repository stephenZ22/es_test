class PostsController < ApplicationController
  def index
  end

  def import_post_data
    if request.method == 'POST'
      file_txt = params[:txt]
      if file_txt
        file_upload_path = File.join(Rails.root, 'public', 'uploads', file_txt.original_filename)
        File.open( file_upload_path, 'wb') { |file| file.write(file_txt.read)}
      else
        flash[:alert] = "没有选择文件"
      end
    end
    redirect_to root_path
  end
end
