Rails.application.routes.draw do
  
  scope "(:locale)" do
    get '/aboutus'   => 'site#aboutus'
    get '/contact'   => 'site#contact'
    # EL root tiene que ser el último porque sino locale me cogerá la url del index
    # y la liará parda
    get '/', to: 'site#home', as: 'root'
  end

end
