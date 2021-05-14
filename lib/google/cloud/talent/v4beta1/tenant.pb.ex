defmodule Google.Cloud.Talent.V4beta1.Tenant.DataUsageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DATA_USAGE_TYPE_UNSPECIFIED | :AGGREGATED | :ISOLATED

  field :DATA_USAGE_TYPE_UNSPECIFIED, 0

  field :AGGREGATED, 1

  field :ISOLATED, 2
end

defmodule Google.Cloud.Talent.V4beta1.Tenant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          external_id: String.t(),
          usage_type: Google.Cloud.Talent.V4beta1.Tenant.DataUsageType.t(),
          keyword_searchable_profile_custom_attributes: [String.t()]
        }

  defstruct [:name, :external_id, :usage_type, :keyword_searchable_profile_custom_attributes]

  field :name, 1, type: :string
  field :external_id, 2, type: :string
  field :usage_type, 3, type: Google.Cloud.Talent.V4beta1.Tenant.DataUsageType, enum: true
  field :keyword_searchable_profile_custom_attributes, 4, repeated: true, type: :string
end
