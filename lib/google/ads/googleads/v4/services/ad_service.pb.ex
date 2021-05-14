defmodule Google.Ads.Googleads.V4.Services.GetAdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V4.Services.AdOperation.t()]
        }

  defstruct [:customer_id, :operations]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.AdOperation
end

defmodule Google.Ads.Googleads.V4.Services.AdOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :update, 1, type: Google.Ads.Googleads.V4.Resources.Ad, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V4.Services.MutateAdResult.t()]
        }

  defstruct [:results]

  field :results, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.MutateAdResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end
