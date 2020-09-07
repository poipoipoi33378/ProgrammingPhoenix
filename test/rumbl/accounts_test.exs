defmodule Rumbl.AccountsTest do
  use Rumbl.DataCase, async: true

  alias Rumbl.Accounts
  alias Rumbl.Account.User

  describe "register_user/1" do
    @valid_attrs %{
      name: "User",
      username: "eva",
      password: "sercret"
    }
    @invalid_attrs %{}

    test "with volid data inserts user" do
      assert {:ok, %User{id: id}=user} = Accounts.register_user(@valid_attris)
      assert user.name == "User"
      assert user.username == "eva"
      assert[%User{id: ^id}] = Accounts.list_users()
    end
  end
end
