defmodule Ccc.Hosted.Marketplace.V2.CustomerLicenseGetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          application_id: String.t(),
          customer_id: String.t()
        }

  defstruct [:application_id, :customer_id]

  field :application_id, 1, type: :string
  field :customer_id, 2, type: :string
end

defmodule Ccc.Hosted.Marketplace.V2.LicenseNotificationListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          application_id: String.t(),
          max_results: non_neg_integer,
          start_token: String.t(),
          timestamp: non_neg_integer
        }

  defstruct [:application_id, :max_results, :start_token, :timestamp]

  field :application_id, 1, type: :string
  field :max_results, 2, type: :uint32
  field :start_token, 3, type: :string
  field :timestamp, 4, type: :uint64
end

defmodule Ccc.Hosted.Marketplace.V2.UserLicenseGetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          application_id: String.t(),
          user_id: String.t()
        }

  defstruct [:application_id, :user_id]

  field :application_id, 1, type: :string
  field :user_id, 2, type: :string
end
