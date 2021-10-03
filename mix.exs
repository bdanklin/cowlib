defmodule Cowlib.Mixfile do
  use Mix.Project

  def project do
    [
      app: :cowlib,
      version: "2.11.1",
      description: description(),
      deps: deps(),
      package: package()
    ]
  end

  defp description do
    """
    HTTP/1.1, HTTP/2 and Websocket client for Erlang/OTP.
    """
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      name: "remedy_cowlib",
      maintainers: ["Benjamin Danklin"],
      licenses: ["ISC"],
      links: %{
        "GitHub" => "https://github.com/bdanklin/cowlib"
      },
      files: ["erlang.mk", "LICENSE", "Makefile", "README.asciidoc", "rebar.config", "src"]
    ]
  end
end
