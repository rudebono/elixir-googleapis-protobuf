defmodule Google.Ads.Googleads.V17.Resources.LocalServicesVerificationArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :artifact_data, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, proto3_optional: true, type: :int64, deprecated: false
  field :creation_date_time, 3, type: :string, json_name: "creationDateTime", deprecated: false

  field :status, 4,
    type:
      Google.Ads.Googleads.V17.Enums.LocalServicesVerificationArtifactStatusEnum.LocalServicesVerificationArtifactStatus,
    enum: true,
    deprecated: false

  field :artifact_type, 5,
    type:
      Google.Ads.Googleads.V17.Enums.LocalServicesVerificationArtifactTypeEnum.LocalServicesVerificationArtifactType,
    json_name: "artifactType",
    enum: true,
    deprecated: false

  field :background_check_verification_artifact, 6,
    type: Google.Ads.Googleads.V17.Resources.BackgroundCheckVerificationArtifact,
    json_name: "backgroundCheckVerificationArtifact",
    oneof: 0,
    deprecated: false

  field :insurance_verification_artifact, 7,
    type: Google.Ads.Googleads.V17.Resources.InsuranceVerificationArtifact,
    json_name: "insuranceVerificationArtifact",
    oneof: 0,
    deprecated: false

  field :license_verification_artifact, 8,
    type: Google.Ads.Googleads.V17.Resources.LicenseVerificationArtifact,
    json_name: "licenseVerificationArtifact",
    oneof: 0,
    deprecated: false

  field :business_registration_check_verification_artifact, 9,
    type: Google.Ads.Googleads.V17.Resources.BusinessRegistrationCheckVerificationArtifact,
    json_name: "businessRegistrationCheckVerificationArtifact",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.BackgroundCheckVerificationArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :case_url, 1,
    proto3_optional: true,
    type: :string,
    json_name: "caseUrl",
    deprecated: false

  field :final_adjudication_date_time, 2,
    proto3_optional: true,
    type: :string,
    json_name: "finalAdjudicationDateTime",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.InsuranceVerificationArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :amount_micros, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "amountMicros",
    deprecated: false

  field :rejection_reason, 2,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V17.Enums.LocalServicesInsuranceRejectionReasonEnum.LocalServicesInsuranceRejectionReason,
    json_name: "rejectionReason",
    enum: true,
    deprecated: false

  field :insurance_document_readonly, 3,
    proto3_optional: true,
    type: Google.Ads.Googleads.V17.Common.LocalServicesDocumentReadOnly,
    json_name: "insuranceDocumentReadonly",
    deprecated: false

  field :expiration_date_time, 4,
    proto3_optional: true,
    type: :string,
    json_name: "expirationDateTime",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.LicenseVerificationArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :license_type, 1,
    proto3_optional: true,
    type: :string,
    json_name: "licenseType",
    deprecated: false

  field :license_number, 2,
    proto3_optional: true,
    type: :string,
    json_name: "licenseNumber",
    deprecated: false

  field :licensee_first_name, 3,
    proto3_optional: true,
    type: :string,
    json_name: "licenseeFirstName",
    deprecated: false

  field :licensee_last_name, 4,
    proto3_optional: true,
    type: :string,
    json_name: "licenseeLastName",
    deprecated: false

  field :rejection_reason, 5,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V17.Enums.LocalServicesLicenseRejectionReasonEnum.LocalServicesLicenseRejectionReason,
    json_name: "rejectionReason",
    enum: true,
    deprecated: false

  field :license_document_readonly, 6,
    proto3_optional: true,
    type: Google.Ads.Googleads.V17.Common.LocalServicesDocumentReadOnly,
    json_name: "licenseDocumentReadonly",
    deprecated: false

  field :expiration_date_time, 7,
    proto3_optional: true,
    type: :string,
    json_name: "expirationDateTime",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.BusinessRegistrationCheckVerificationArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :business_registration, 0

  field :registration_type, 3,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V17.Enums.LocalServicesBusinessRegistrationTypeEnum.LocalServicesBusinessRegistrationType,
    json_name: "registrationType",
    enum: true,
    deprecated: false

  field :check_id, 4,
    proto3_optional: true,
    type: :string,
    json_name: "checkId",
    deprecated: false

  field :rejection_reason, 5,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V17.Enums.LocalServicesBusinessRegistrationCheckRejectionReasonEnum.LocalServicesBusinessRegistrationCheckRejectionReason,
    json_name: "rejectionReason",
    enum: true,
    deprecated: false

  field :registration_number, 1,
    type: Google.Ads.Googleads.V17.Resources.BusinessRegistrationNumber,
    json_name: "registrationNumber",
    oneof: 0,
    deprecated: false

  field :registration_document, 2,
    type: Google.Ads.Googleads.V17.Resources.BusinessRegistrationDocument,
    json_name: "registrationDocument",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.BusinessRegistrationNumber do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :number, 1, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.BusinessRegistrationDocument do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :document_readonly, 1,
    proto3_optional: true,
    type: Google.Ads.Googleads.V17.Common.LocalServicesDocumentReadOnly,
    json_name: "documentReadonly",
    deprecated: false
end
