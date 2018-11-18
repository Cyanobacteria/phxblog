defmodule Phxblog.PostTest do
  use Phxblog.DataCase
  
  alias Phxblog.Post

  #functions
  #insert post
  #  insert one and select it and compare is the same 
  #find all post
  #  insert multi posts(ex:5 posts) and select from table and count all, test count and insert number is the same 
  #find one post
  #  insert one and find it  
  #update post
  #  insert one and update it and select it and compare the update value is the same 
  #delete post
  #  insert one and check it available and delete it and check is not avalible

  describe "insert_post/1" do
    test "insert one post" do
      post = insert(:post)
      result = Post.get_post(post.id)
      assert post.id == result.id
    end
  end 

  describe "get_post/1" do
    test "get the respective post" do
      post = insert(:post)
      result = Post.get_post(post.id)
      assert post.id  == result.id && post.content == result.content
    end
  end 


end
