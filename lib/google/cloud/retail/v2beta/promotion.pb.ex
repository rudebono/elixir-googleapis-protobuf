defmodule Google.Cloud.Retail.V2beta.Promotion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          promotion_id: String.t()
        }

  defstruct promotion_id: ""

  field :promotion_id, 1, type: :string, json_name: "promotionId"
end
