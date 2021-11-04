defmodule Google.Ads.Googleads.V8.Enums.PolicyTopicEvidenceDestinationNotWorkingDnsErrorTypeEnum.PolicyTopicEvidenceDestinationNotWorkingDnsErrorType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :HOSTNAME_NOT_FOUND | :GOOGLE_CRAWLER_DNS_ISSUE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :HOSTNAME_NOT_FOUND, 2
  field :GOOGLE_CRAWLER_DNS_ISSUE, 3
end

defmodule Google.Ads.Googleads.V8.Enums.PolicyTopicEvidenceDestinationNotWorkingDnsErrorTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
