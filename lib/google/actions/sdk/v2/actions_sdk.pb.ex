defmodule Google.Actions.Sdk.V2.WriteDraftRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :files, 4, type: Google.Actions.Sdk.V2.Files, deprecated: false
end

defmodule Google.Actions.Sdk.V2.Draft do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :validation_results, 2,
    type: Google.Actions.Sdk.V2.ValidationResults,
    json_name: "validationResults"
end

defmodule Google.Actions.Sdk.V2.WritePreviewRequest.ContentFromDraft do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Actions.Sdk.V2.WritePreviewRequest.ContentFromSubmittedVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :version, 1, type: :string, deprecated: false
end

defmodule Google.Actions.Sdk.V2.WritePreviewRequest.PreviewSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sandbox, 1, type: Google.Protobuf.BoolValue
end

defmodule Google.Actions.Sdk.V2.WritePreviewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :parent, 1, type: :string, deprecated: false
  field :files, 5, type: Google.Actions.Sdk.V2.Files, oneof: 0
  field :draft, 6, type: Google.Actions.Sdk.V2.WritePreviewRequest.ContentFromDraft, oneof: 0

  field :submitted_version, 7,
    type: Google.Actions.Sdk.V2.WritePreviewRequest.ContentFromSubmittedVersion,
    json_name: "submittedVersion",
    oneof: 0

  field :preview_settings, 4,
    type: Google.Actions.Sdk.V2.WritePreviewRequest.PreviewSettings,
    json_name: "previewSettings",
    deprecated: false
end

defmodule Google.Actions.Sdk.V2.Preview do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :validation_results, 2,
    type: Google.Actions.Sdk.V2.ValidationResults,
    json_name: "validationResults"

  field :simulator_url, 3, type: :string, json_name: "simulatorUrl"
end

defmodule Google.Actions.Sdk.V2.CreateVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :files, 5, type: Google.Actions.Sdk.V2.Files, deprecated: false
  field :release_channel, 4, type: :string, json_name: "releaseChannel", deprecated: false
end

defmodule Google.Actions.Sdk.V2.ReadDraftRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :client_secret_encryption_key_version, 2,
    type: :string,
    json_name: "clientSecretEncryptionKeyVersion",
    deprecated: false
end

defmodule Google.Actions.Sdk.V2.ReadDraftResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :files, 3, type: Google.Actions.Sdk.V2.Files
end

defmodule Google.Actions.Sdk.V2.ReadVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :client_secret_encryption_key_version, 2,
    type: :string,
    json_name: "clientSecretEncryptionKeyVersion",
    deprecated: false
end

defmodule Google.Actions.Sdk.V2.ReadVersionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :files, 1, type: Google.Actions.Sdk.V2.Files
end

defmodule Google.Actions.Sdk.V2.EncryptSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :client_secret, 1, type: :string, json_name: "clientSecret", deprecated: false
end

defmodule Google.Actions.Sdk.V2.EncryptSecretResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account_linking_secret, 1,
    type: Google.Actions.Sdk.V2.AccountLinkingSecret,
    json_name: "accountLinkingSecret"
end

defmodule Google.Actions.Sdk.V2.DecryptSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :encrypted_client_secret, 1,
    type: :bytes,
    json_name: "encryptedClientSecret",
    deprecated: false
end

defmodule Google.Actions.Sdk.V2.DecryptSecretResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :client_secret, 1, type: :string, json_name: "clientSecret"
end

defmodule Google.Actions.Sdk.V2.ListSampleProjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Actions.Sdk.V2.ListSampleProjectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sample_projects, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.SampleProject,
    json_name: "sampleProjects"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Actions.Sdk.V2.SampleProject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :hosted_url, 2, type: :string, json_name: "hostedUrl"
  field :description, 3, type: :string
end

defmodule Google.Actions.Sdk.V2.ListReleaseChannelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Actions.Sdk.V2.ListReleaseChannelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :release_channels, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.ReleaseChannel,
    json_name: "releaseChannels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Actions.Sdk.V2.ListVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Actions.Sdk.V2.ListVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :versions, 1, repeated: true, type: Google.Actions.Sdk.V2.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Actions.Sdk.V2.ActionsSdk.Service do
  @moduledoc false

  use GRPC.Service, name: "google.actions.sdk.v2.ActionsSdk", protoc_gen_elixir_version: "0.14.1"

  rpc :WriteDraft, stream(Google.Actions.Sdk.V2.WriteDraftRequest), Google.Actions.Sdk.V2.Draft

  rpc :WritePreview,
      stream(Google.Actions.Sdk.V2.WritePreviewRequest),
      Google.Actions.Sdk.V2.Preview

  rpc :CreateVersion,
      stream(Google.Actions.Sdk.V2.CreateVersionRequest),
      Google.Actions.Sdk.V2.Version

  rpc :ReadDraft,
      Google.Actions.Sdk.V2.ReadDraftRequest,
      stream(Google.Actions.Sdk.V2.ReadDraftResponse)

  rpc :ReadVersion,
      Google.Actions.Sdk.V2.ReadVersionRequest,
      stream(Google.Actions.Sdk.V2.ReadVersionResponse)

  rpc :EncryptSecret,
      Google.Actions.Sdk.V2.EncryptSecretRequest,
      Google.Actions.Sdk.V2.EncryptSecretResponse

  rpc :DecryptSecret,
      Google.Actions.Sdk.V2.DecryptSecretRequest,
      Google.Actions.Sdk.V2.DecryptSecretResponse

  rpc :ListSampleProjects,
      Google.Actions.Sdk.V2.ListSampleProjectsRequest,
      Google.Actions.Sdk.V2.ListSampleProjectsResponse

  rpc :ListReleaseChannels,
      Google.Actions.Sdk.V2.ListReleaseChannelsRequest,
      Google.Actions.Sdk.V2.ListReleaseChannelsResponse

  rpc :ListVersions,
      Google.Actions.Sdk.V2.ListVersionsRequest,
      Google.Actions.Sdk.V2.ListVersionsResponse
end

defmodule Google.Actions.Sdk.V2.ActionsSdk.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Actions.Sdk.V2.ActionsSdk.Service
end
