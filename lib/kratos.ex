defmodule Example.Kratos do
  use Tesla

  alias Kratos.Api

  def list_identity_schemas do
    conn = client()

    {:ok, [schema]} = Api.V0alpha2.list_identity_schemas(conn)

    IO.inspect(schema)
  end

  def client do
    middleware = [
      {Tesla.Middleware.BaseUrl,
       Application.get_env(:example, :kratos_url, "http://localhost:4434")}
    ]

    Tesla.client(middleware)
  end
end
