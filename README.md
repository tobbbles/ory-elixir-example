# Example

**TODO: Add description**

## Setup
Please add your Kratos Admin URL to the `config/config.exs` file.


Get the dependencies
```shell
$ mix deps.get
...
$ mix deps.compile
```

## Run

*Note: there are a lot of warnings from the libraries on compile such as `warning: found quoted atom "reason" but the quotes are not required.` - this is an upstream openapi-generator issue*

You can run an interactive shell and use the SDKs from the shell, like the following:
```
$ iex -S mix
Interactive Elixir (1.13.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Example.Kratos.list_identity_schemas
```

If you configured your URL correctly, you should see a list of identites from your admin URL.