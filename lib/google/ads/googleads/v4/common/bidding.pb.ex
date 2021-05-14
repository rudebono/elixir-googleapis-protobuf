defmodule Google.Ads.Googleads.V4.Common.Commission do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commission_rate_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:commission_rate_micros]

  field :commission_rate_micros, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.EnhancedCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V4.Common.ManualCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enhanced_cpc_enabled: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [:enhanced_cpc_enabled]

  field :enhanced_cpc_enabled, 1, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V4.Common.ManualCpm do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V4.Common.ManualCpv do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V4.Common.MaximizeConversions do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V4.Common.MaximizeConversionValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct [:target_roas]

  field :target_roas, 1, type: Google.Protobuf.DoubleValue
end

defmodule Google.Ads.Googleads.V4.Common.TargetCpa do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa_micros: Google.Protobuf.Int64Value.t() | nil,
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil,
          cpc_bid_floor_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:target_cpa_micros, :cpc_bid_ceiling_micros, :cpc_bid_floor_micros]

  field :target_cpa_micros, 1, type: Google.Protobuf.Int64Value
  field :cpc_bid_ceiling_micros, 2, type: Google.Protobuf.Int64Value
  field :cpc_bid_floor_micros, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.TargetCpm do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V4.Common.TargetImpressionShare do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location:
            Google.Ads.Googleads.V4.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation.t(),
          location_fraction_micros: Google.Protobuf.Int64Value.t() | nil,
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:location, :location_fraction_micros, :cpc_bid_ceiling_micros]

  field :location, 1,
    type:
      Google.Ads.Googleads.V4.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true

  field :location_fraction_micros, 2, type: Google.Protobuf.Int64Value
  field :cpc_bid_ceiling_micros, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.TargetRoas do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: Google.Protobuf.DoubleValue.t() | nil,
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil,
          cpc_bid_floor_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:target_roas, :cpc_bid_ceiling_micros, :cpc_bid_floor_micros]

  field :target_roas, 1, type: Google.Protobuf.DoubleValue
  field :cpc_bid_ceiling_micros, 2, type: Google.Protobuf.Int64Value
  field :cpc_bid_floor_micros, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.TargetSpend do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_spend_micros: Google.Protobuf.Int64Value.t() | nil,
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:target_spend_micros, :cpc_bid_ceiling_micros]

  field :target_spend_micros, 1, type: Google.Protobuf.Int64Value, deprecated: true
  field :cpc_bid_ceiling_micros, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.PercentCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil,
          enhanced_cpc_enabled: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [:cpc_bid_ceiling_micros, :enhanced_cpc_enabled]

  field :cpc_bid_ceiling_micros, 1, type: Google.Protobuf.Int64Value
  field :enhanced_cpc_enabled, 2, type: Google.Protobuf.BoolValue
end
