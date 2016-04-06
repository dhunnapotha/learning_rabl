object @user


attributes :name

node(:user_show_root){root_object.name}

child :articles, object_root: false do
  node(:user_show_articles_child_root){ root_object.class.to_s } # the whole collection
  extends 'article/show'
end


