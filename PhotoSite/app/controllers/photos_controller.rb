class PhotosController < ApplicationController
  def index
    #@userphotos=Photo.find_by_sql(('select p.users,p.id,p.date_time,p.file_name, c.id as cid, c.users as cuser, c.date_time as cdate, c.comment_text from photos p, comments c where (p.users='+params[:id]+') and c.photos=p.id'))
    @userphotos=Photo.find_by_sql(('select * from photos where (user='+params[:id]+')'))
    @usercomment=Comment.all
    @users=User.all
  end

end
