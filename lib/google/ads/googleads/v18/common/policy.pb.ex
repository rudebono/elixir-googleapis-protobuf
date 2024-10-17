defmodule Google.Ads.Googleads.V18.Common.PolicyViolationKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :policy_name, 3, proto3_optional: true, type: :string, json_name: "policyName"
  field :violating_text, 4, proto3_optional: true, type: :string, json_name: "violatingText"
end

defmodule Google.Ads.Googleads.V18.Common.PolicyValidationParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ignorable_policy_topics, 3,
    repeated: true,
    type: :string,
    json_name: "ignorablePolicyTopics"

  field :exempt_policy_violation_keys, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.PolicyViolationKey,
    json_name: "exemptPolicyViolationKeys"
end

defmodule Google.Ads.Googleads.V18.Common.PolicyTopicEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :topic, 5, proto3_optional: true, type: :string

  field :type, 2,
    type: Google.Ads.Googleads.V18.Enums.PolicyTopicEntryTypeEnum.PolicyTopicEntryType,
    enum: true

  field :evidences, 3, repeated: true, type: Google.Ads.Googleads.V18.Common.PolicyTopicEvidence

  field :constraints, 4,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.PolicyTopicConstraint
end

defmodule Google.Ads.Googleads.V18.Common.PolicyTopicEvidence.TextList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :texts, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V18.Common.PolicyTopicEvidence.WebsiteList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :websites, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V18.Common.PolicyTopicEvidence.DestinationTextList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :destination_texts, 2, repeated: true, type: :string, json_name: "destinationTexts"
end

defmodule Google.Ads.Googleads.V18.Common.PolicyTopicEvidence.DestinationMismatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :url_types, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V18.Enums.PolicyTopicEvidenceDestinationMismatchUrlTypeEnum.PolicyTopicEvidenceDestinationMismatchUrlType,
    json_name: "urlTypes",
    enum: true
end

defmodule Google.Ads.Googleads.V18.Common.PolicyTopicEvidence.DestinationNotWorking do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :reason, 0

  field :expanded_url, 7, proto3_optional: true, type: :string, json_name: "expandedUrl"

  field :device, 4,
    type:
      Google.Ads.Googleads.V18.Enums.PolicyTopicEvidenceDestinationNotWorkingDeviceEnum.PolicyTopicEvidenceDestinationNotWorkingDevice,
    enum: true

  field :last_checked_date_time, 8,
    proto3_optional: true,
    type: :string,
    json_name: "lastCheckedDateTime"

  field :dns_error_type, 1,
    type:
      Google.Ads.Googleads.V18.Enums.PolicyTopicEvidenceDestinationNotWorkingDnsErrorTypeEnum.PolicyTopicEvidenceDestinationNotWorkingDnsErrorType,
    json_name: "dnsErrorType",
    enum: true,
    oneof: 0

  field :http_error_code, 6, type: :int64, json_name: "httpErrorCode", oneof: 0
end

defmodule Google.Ads.Googleads.V18.Common.PolicyTopicEvidence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :value, 0

  field :website_list, 3,
    type: Google.Ads.Googleads.V18.Common.PolicyTopicEvidence.WebsiteList,
    json_name: "websiteList",
    oneof: 0

  field :text_list, 4,
    type: Google.Ads.Googleads.V18.Common.PolicyTopicEvidence.TextList,
    json_name: "textList",
    oneof: 0

  field :language_code, 9, type: :string, json_name: "languageCode", oneof: 0

  field :destination_text_list, 6,
    type: Google.Ads.Googleads.V18.Common.PolicyTopicEvidence.DestinationTextList,
    json_name: "destinationTextList",
    oneof: 0

  field :destination_mismatch, 7,
    type: Google.Ads.Googleads.V18.Common.PolicyTopicEvidence.DestinationMismatch,
    json_name: "destinationMismatch",
    oneof: 0

  field :destination_not_working, 8,
    type: Google.Ads.Googleads.V18.Common.PolicyTopicEvidence.DestinationNotWorking,
    json_name: "destinationNotWorking",
    oneof: 0
end

defmodule Google.Ads.Googleads.V18.Common.PolicyTopicConstraint.CountryConstraintList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :total_targeted_countries, 3,
    proto3_optional: true,
    type: :int32,
    json_name: "totalTargetedCountries"

  field :countries, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.PolicyTopicConstraint.CountryConstraint
end

defmodule Google.Ads.Googleads.V18.Common.PolicyTopicConstraint.ResellerConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V18.Common.PolicyTopicConstraint.CountryConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :country_criterion, 2, proto3_optional: true, type: :string, json_name: "countryCriterion"
end

defmodule Google.Ads.Googleads.V18.Common.PolicyTopicConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :value, 0

  field :country_constraint_list, 1,
    type: Google.Ads.Googleads.V18.Common.PolicyTopicConstraint.CountryConstraintList,
    json_name: "countryConstraintList",
    oneof: 0

  field :reseller_constraint, 2,
    type: Google.Ads.Googleads.V18.Common.PolicyTopicConstraint.ResellerConstraint,
    json_name: "resellerConstraint",
    oneof: 0

  field :certificate_missing_in_country_list, 3,
    type: Google.Ads.Googleads.V18.Common.PolicyTopicConstraint.CountryConstraintList,
    json_name: "certificateMissingInCountryList",
    oneof: 0

  field :certificate_domain_mismatch_in_country_list, 4,
    type: Google.Ads.Googleads.V18.Common.PolicyTopicConstraint.CountryConstraintList,
    json_name: "certificateDomainMismatchInCountryList",
    oneof: 0
end