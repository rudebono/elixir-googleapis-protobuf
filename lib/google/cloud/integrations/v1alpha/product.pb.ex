defmodule Google.Cloud.Integrations.V1alpha.Product do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PRODUCT_UNSPECIFIED | :IP | :APIGEE | :SECURITY

  field :PRODUCT_UNSPECIFIED, 0
  field :IP, 1
  field :APIGEE, 2
  field :SECURITY, 3
end
