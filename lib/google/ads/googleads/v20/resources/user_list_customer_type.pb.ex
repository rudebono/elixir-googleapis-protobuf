defmodule Google.Ads.Googleads.V20.Resources.UserListCustomerType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :user_list, 2, type: :string, json_name: "userList", deprecated: false

  field :customer_type_category, 3,
    type:
      Google.Ads.Googleads.V20.Enums.UserListCustomerTypeCategoryEnum.UserListCustomerTypeCategory,
    json_name: "customerTypeCategory",
    enum: true,
    deprecated: false
end
