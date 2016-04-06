object @user
cache
cache ["timepass", "1", @user]
cache ["timepass", "2", @user]


attributes :name

node(:user_show_root){root_object.name}

child :articles, object_root: false do
  cache ['rabl', 'articles']
  node(:user_show_articles_child_root){ root_object.class.to_s } # the whole collection
  extends 'article/show'
end




# node(:node_articles) do |user|
#   cache ["timepass", "3", @user]
#   user.inspect.to_s
# end
