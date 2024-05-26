defmodule Google.Cloud.Abuseevent.Logging.V1.AbuseEvent.DetectionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DETECTION_TYPE_UNSPECIFIED, 0
  field :CRYPTO_MINING, 1
  field :LEAKED_CREDENTIALS, 2
  field :PHISHING, 3
  field :MALWARE, 4
  field :NO_ABUSE, 5
end

defmodule Google.Cloud.Abuseevent.Logging.V1.AbuseEvent.ActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ACTION_TYPE_UNSPECIFIED, 0
  field :NOTIFY, 1
  field :PROJECT_SUSPENSION, 2
  field :REINSTATE, 3
  field :WARN, 4
  field :RESOURCE_SUSPENSION, 5
end

defmodule Google.Cloud.Abuseevent.Logging.V1.AbuseEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :event_type, 0

  field :detection_type, 1,
    type: Google.Cloud.Abuseevent.Logging.V1.AbuseEvent.DetectionType,
    json_name: "detectionType",
    enum: true

  field :reason, 2, type: :string
  field :action, 3, type: Google.Cloud.Abuseevent.Logging.V1.AbuseEvent.ActionType, enum: true

  field :crypto_mining_event, 4,
    type: Google.Cloud.Abuseevent.Logging.V1.CryptoMiningEvent,
    json_name: "cryptoMiningEvent",
    oneof: 0

  field :leaked_credential_event, 5,
    type: Google.Cloud.Abuseevent.Logging.V1.LeakedCredentialEvent,
    json_name: "leakedCredentialEvent",
    oneof: 0

  field :harmful_content_event, 6,
    type: Google.Cloud.Abuseevent.Logging.V1.HarmfulContentEvent,
    json_name: "harmfulContentEvent",
    oneof: 0

  field :reinstatement_event, 8,
    type: Google.Cloud.Abuseevent.Logging.V1.ReinstatementEvent,
    json_name: "reinstatementEvent",
    oneof: 0

  field :decision_escalation_event, 9,
    type: Google.Cloud.Abuseevent.Logging.V1.DecisionEscalationEvent,
    json_name: "decisionEscalationEvent",
    oneof: 0

  field :remediation_link, 7, type: :string, json_name: "remediationLink"
end

defmodule Google.Cloud.Abuseevent.Logging.V1.CryptoMiningEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vm_resource, 1, repeated: true, type: :string, json_name: "vmResource"

  field :detected_mining_start_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "detectedMiningStartTime"

  field :detected_mining_end_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "detectedMiningEndTime"
end

defmodule Google.Cloud.Abuseevent.Logging.V1.LeakedCredentialEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :credential_type, 0

  field :service_account_credential, 1,
    type: Google.Cloud.Abuseevent.Logging.V1.ServiceAccountCredential,
    json_name: "serviceAccountCredential",
    oneof: 0

  field :api_key_credential, 2,
    type: Google.Cloud.Abuseevent.Logging.V1.ApiKeyCredential,
    json_name: "apiKeyCredential",
    oneof: 0

  field :detected_uri, 3, type: :string, json_name: "detectedUri"
end

defmodule Google.Cloud.Abuseevent.Logging.V1.ServiceAccountCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service_account, 1, type: :string, json_name: "serviceAccount"
  field :key_id, 2, type: :string, json_name: "keyId"
end

defmodule Google.Cloud.Abuseevent.Logging.V1.ApiKeyCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :api_key, 1, type: :string, json_name: "apiKey"
end

defmodule Google.Cloud.Abuseevent.Logging.V1.HarmfulContentEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Abuseevent.Logging.V1.ReinstatementEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Abuseevent.Logging.V1.DecisionEscalationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end