require IEx
defmodule EveGate.EveEsi do

  def token(access_code) do
    body = URI.encode_query(
      %{
        grant_type: "authorization_code",
        code: access_code
      })

    {:ok, %{body: body, status_code: status_code}} =
      HTTPoison.post(
        "https://login.eveonline.com/v2/oauth/token",
        body,
        headers())
    IEx.pry
    {:ok, body}
  end

  def verify() do
    {:ok, %{body: json_body}} = HTTPoison.get("https://login.eveonline.com/oauth/verify", headers())
    {:ok, json_body}
  end

  defp headers() do
    [
      {"Authorization", "Basic #{auth_header()}"},
      {"Content-Type", "application/x-www-form-urlencoded"},
      {"Host", "login.eveonline.com"}
    ]
  end

  defp auth_header do
    client_id = "a5d0d4776a12419ea4e11d7c53074065"
    secret_key = "3oy9U1aTf3IsbtFIGTlSctb1EZwf41M7gxH5d9aO"
    auth = Base.encode64("#{client_id}:#{secret_key}")
  end

end
