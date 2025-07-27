defmodule Grafeas.V1.VulnerabilityAssessmentNote.Assessment.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :AFFECTED, 1
  field :NOT_AFFECTED, 2
  field :FIXED, 3
  field :UNDER_INVESTIGATION, 4
end

defmodule Grafeas.V1.VulnerabilityAssessmentNote.Assessment.Justification.JustificationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :JUSTIFICATION_TYPE_UNSPECIFIED, 0
  field :COMPONENT_NOT_PRESENT, 1
  field :VULNERABLE_CODE_NOT_PRESENT, 2
  field :VULNERABLE_CODE_NOT_IN_EXECUTE_PATH, 3
  field :VULNERABLE_CODE_CANNOT_BE_CONTROLLED_BY_ADVERSARY, 4
  field :INLINE_MITIGATIONS_ALREADY_EXIST, 5
end

defmodule Grafeas.V1.VulnerabilityAssessmentNote.Assessment.Remediation.RemediationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REMEDIATION_TYPE_UNSPECIFIED, 0
  field :MITIGATION, 1
  field :NO_FIX_PLANNED, 2
  field :NONE_AVAILABLE, 3
  field :VENDOR_FIX, 4
  field :WORKAROUND, 5
end

defmodule Grafeas.V1.VulnerabilityAssessmentNote.Publisher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :issuing_authority, 2, type: :string, json_name: "issuingAuthority"
  field :publisher_namespace, 3, type: :string, json_name: "publisherNamespace"
end

defmodule Grafeas.V1.VulnerabilityAssessmentNote.Product do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :identifier, 0

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :generic_uri, 3, type: :string, json_name: "genericUri", oneof: 0
end

defmodule Grafeas.V1.VulnerabilityAssessmentNote.Assessment.Justification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :justification_type, 1,
    type: Grafeas.V1.VulnerabilityAssessmentNote.Assessment.Justification.JustificationType,
    json_name: "justificationType",
    enum: true

  field :details, 2, type: :string
end

defmodule Grafeas.V1.VulnerabilityAssessmentNote.Assessment.Remediation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :remediation_type, 1,
    type: Grafeas.V1.VulnerabilityAssessmentNote.Assessment.Remediation.RemediationType,
    json_name: "remediationType",
    enum: true

  field :details, 2, type: :string
  field :remediation_uri, 3, type: Grafeas.V1.RelatedUrl, json_name: "remediationUri"
end

defmodule Grafeas.V1.VulnerabilityAssessmentNote.Assessment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cve, 1, type: :string, deprecated: true
  field :vulnerability_id, 9, type: :string, json_name: "vulnerabilityId"
  field :short_description, 2, type: :string, json_name: "shortDescription"
  field :long_description, 3, type: :string, json_name: "longDescription"
  field :related_uris, 4, repeated: true, type: Grafeas.V1.RelatedUrl, json_name: "relatedUris"
  field :state, 5, type: Grafeas.V1.VulnerabilityAssessmentNote.Assessment.State, enum: true
  field :impacts, 6, repeated: true, type: :string
  field :justification, 7, type: Grafeas.V1.VulnerabilityAssessmentNote.Assessment.Justification

  field :remediations, 8,
    repeated: true,
    type: Grafeas.V1.VulnerabilityAssessmentNote.Assessment.Remediation
end

defmodule Grafeas.V1.VulnerabilityAssessmentNote do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :title, 1, type: :string
  field :short_description, 2, type: :string, json_name: "shortDescription"
  field :long_description, 3, type: :string, json_name: "longDescription"
  field :language_code, 4, type: :string, json_name: "languageCode"
  field :publisher, 5, type: Grafeas.V1.VulnerabilityAssessmentNote.Publisher
  field :product, 6, type: Grafeas.V1.VulnerabilityAssessmentNote.Product
  field :assessment, 7, type: Grafeas.V1.VulnerabilityAssessmentNote.Assessment
end
