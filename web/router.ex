defmodule EveGate.Router do
  use EveGate.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", EveGate do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/access-token/create", AccessTokenController, :create
    resources "/access-tokens", AccessTokenController
    resources "/characters", CharacterController
  end

  # Other scopes may use custom stacks.
  # scope "/api", EveGate do
  #   pipe_through :api
  # end
end



# curl -XPOST "https://login.eveonline.com/oauth/token" \
# -d '{"grant_type":"authorization_code", "code":"evYfeluMnxL-sgZj1cfpSUMoyidT8Y_mtWIhEFJ3OBAdJPsVoprcJlAU1qzFQpSX0"}' \
# -H "Authorization: Basic YTVkMGQ0Nzc2YTEyNDE5ZWE0ZTExZDdjNTMwNzQwNjU6M295OVUxYVRmM0lzYnRGSUdUbFNjdGIxRVp3ZjQxTTdneEg1ZDlhTw==" \
# -H "Content-Type: application/json"
