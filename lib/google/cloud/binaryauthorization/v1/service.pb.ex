defmodule Google.Cloud.Binaryauthorization.V1.ValidateAttestationOccurrenceResponse.Result do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RESULT_UNSPECIFIED | :VERIFIED | :ATTESTATION_NOT_VERIFIABLE

  field :RESULT_UNSPECIFIED, 0
  field :VERIFIED, 1
  field :ATTESTATION_NOT_VERIFIABLE, 2
end
defmodule Google.Cloud.Binaryauthorization.V1.GetPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Binaryauthorization.V1.UpdatePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy: Google.Cloud.Binaryauthorization.V1.Policy.t() | nil
        }

  defstruct policy: nil

  field :policy, 1, type: Google.Cloud.Binaryauthorization.V1.Policy, deprecated: false
end
defmodule Google.Cloud.Binaryauthorization.V1.CreateAttestorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          attestor_id: String.t(),
          attestor: Google.Cloud.Binaryauthorization.V1.Attestor.t() | nil
        }

  defstruct parent: "",
            attestor_id: "",
            attestor: nil

  field :parent, 1, type: :string, deprecated: false
  field :attestor_id, 2, type: :string, json_name: "attestorId", deprecated: false
  field :attestor, 3, type: Google.Cloud.Binaryauthorization.V1.Attestor, deprecated: false
end
defmodule Google.Cloud.Binaryauthorization.V1.GetAttestorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Binaryauthorization.V1.UpdateAttestorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attestor: Google.Cloud.Binaryauthorization.V1.Attestor.t() | nil
        }

  defstruct attestor: nil

  field :attestor, 1, type: Google.Cloud.Binaryauthorization.V1.Attestor, deprecated: false
end
defmodule Google.Cloud.Binaryauthorization.V1.ListAttestorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Binaryauthorization.V1.ListAttestorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attestors: [Google.Cloud.Binaryauthorization.V1.Attestor.t()],
          next_page_token: String.t()
        }

  defstruct attestors: [],
            next_page_token: ""

  field :attestors, 1, repeated: true, type: Google.Cloud.Binaryauthorization.V1.Attestor
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Binaryauthorization.V1.DeleteAttestorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Binaryauthorization.V1.GetSystemPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Binaryauthorization.V1.ValidateAttestationOccurrenceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attestor: String.t(),
          attestation: Grafeas.V1.AttestationOccurrence.t() | nil,
          occurrence_note: String.t(),
          occurrence_resource_uri: String.t()
        }

  defstruct attestor: "",
            attestation: nil,
            occurrence_note: "",
            occurrence_resource_uri: ""

  field :attestor, 1, type: :string, deprecated: false
  field :attestation, 2, type: Grafeas.V1.AttestationOccurrence, deprecated: false
  field :occurrence_note, 3, type: :string, json_name: "occurrenceNote", deprecated: false

  field :occurrence_resource_uri, 4,
    type: :string,
    json_name: "occurrenceResourceUri",
    deprecated: false
end
defmodule Google.Cloud.Binaryauthorization.V1.ValidateAttestationOccurrenceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result:
            Google.Cloud.Binaryauthorization.V1.ValidateAttestationOccurrenceResponse.Result.t(),
          denial_reason: String.t()
        }

  defstruct result: :RESULT_UNSPECIFIED,
            denial_reason: ""

  field :result, 1,
    type: Google.Cloud.Binaryauthorization.V1.ValidateAttestationOccurrenceResponse.Result,
    enum: true

  field :denial_reason, 2, type: :string, json_name: "denialReason"
end
defmodule Google.Cloud.Binaryauthorization.V1.BinauthzManagementServiceV1.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.binaryauthorization.v1.BinauthzManagementServiceV1"

  rpc :GetPolicy,
      Google.Cloud.Binaryauthorization.V1.GetPolicyRequest,
      Google.Cloud.Binaryauthorization.V1.Policy

  rpc :UpdatePolicy,
      Google.Cloud.Binaryauthorization.V1.UpdatePolicyRequest,
      Google.Cloud.Binaryauthorization.V1.Policy

  rpc :CreateAttestor,
      Google.Cloud.Binaryauthorization.V1.CreateAttestorRequest,
      Google.Cloud.Binaryauthorization.V1.Attestor

  rpc :GetAttestor,
      Google.Cloud.Binaryauthorization.V1.GetAttestorRequest,
      Google.Cloud.Binaryauthorization.V1.Attestor

  rpc :UpdateAttestor,
      Google.Cloud.Binaryauthorization.V1.UpdateAttestorRequest,
      Google.Cloud.Binaryauthorization.V1.Attestor

  rpc :ListAttestors,
      Google.Cloud.Binaryauthorization.V1.ListAttestorsRequest,
      Google.Cloud.Binaryauthorization.V1.ListAttestorsResponse

  rpc :DeleteAttestor,
      Google.Cloud.Binaryauthorization.V1.DeleteAttestorRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Binaryauthorization.V1.BinauthzManagementServiceV1.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Binaryauthorization.V1.BinauthzManagementServiceV1.Service
end
defmodule Google.Cloud.Binaryauthorization.V1.SystemPolicyV1.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.binaryauthorization.v1.SystemPolicyV1"

  rpc :GetSystemPolicy,
      Google.Cloud.Binaryauthorization.V1.GetSystemPolicyRequest,
      Google.Cloud.Binaryauthorization.V1.Policy
end

defmodule Google.Cloud.Binaryauthorization.V1.SystemPolicyV1.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Binaryauthorization.V1.SystemPolicyV1.Service
end
defmodule Google.Cloud.Binaryauthorization.V1.ValidationHelperV1.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.binaryauthorization.v1.ValidationHelperV1"

  rpc :ValidateAttestationOccurrence,
      Google.Cloud.Binaryauthorization.V1.ValidateAttestationOccurrenceRequest,
      Google.Cloud.Binaryauthorization.V1.ValidateAttestationOccurrenceResponse
end

defmodule Google.Cloud.Binaryauthorization.V1.ValidationHelperV1.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Binaryauthorization.V1.ValidationHelperV1.Service
end
