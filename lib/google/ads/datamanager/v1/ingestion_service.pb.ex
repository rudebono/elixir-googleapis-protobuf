defmodule Google.Ads.Datamanager.V1.Encoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENCODING_UNSPECIFIED, 0
  field :HEX, 1
  field :BASE64, 2
end

defmodule Google.Ads.Datamanager.V1.IngestAudienceMembersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :destinations, 1,
    repeated: true,
    type: Google.Ads.Datamanager.V1.Destination,
    deprecated: false

  field :audience_members, 2,
    repeated: true,
    type: Google.Ads.Datamanager.V1.AudienceMember,
    json_name: "audienceMembers",
    deprecated: false

  field :consent, 3, type: Google.Ads.Datamanager.V1.Consent, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :encoding, 5, type: Google.Ads.Datamanager.V1.Encoding, enum: true, deprecated: false

  field :encryption_info, 6,
    type: Google.Ads.Datamanager.V1.EncryptionInfo,
    json_name: "encryptionInfo",
    deprecated: false

  field :terms_of_service, 7,
    type: Google.Ads.Datamanager.V1.TermsOfService,
    json_name: "termsOfService",
    deprecated: false
end

defmodule Google.Ads.Datamanager.V1.IngestAudienceMembersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
end

defmodule Google.Ads.Datamanager.V1.RemoveAudienceMembersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :destinations, 1,
    repeated: true,
    type: Google.Ads.Datamanager.V1.Destination,
    deprecated: false

  field :audience_members, 2,
    repeated: true,
    type: Google.Ads.Datamanager.V1.AudienceMember,
    json_name: "audienceMembers",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :encoding, 4, type: Google.Ads.Datamanager.V1.Encoding, enum: true, deprecated: false

  field :encryption_info, 5,
    type: Google.Ads.Datamanager.V1.EncryptionInfo,
    json_name: "encryptionInfo",
    deprecated: false
end

defmodule Google.Ads.Datamanager.V1.RemoveAudienceMembersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
end

defmodule Google.Ads.Datamanager.V1.IngestEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :destinations, 1,
    repeated: true,
    type: Google.Ads.Datamanager.V1.Destination,
    deprecated: false

  field :events, 2, repeated: true, type: Google.Ads.Datamanager.V1.Event, deprecated: false
  field :consent, 3, type: Google.Ads.Datamanager.V1.Consent, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :encoding, 5, type: Google.Ads.Datamanager.V1.Encoding, enum: true, deprecated: false

  field :encryption_info, 6,
    type: Google.Ads.Datamanager.V1.EncryptionInfo,
    json_name: "encryptionInfo",
    deprecated: false
end

defmodule Google.Ads.Datamanager.V1.IngestEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
end

defmodule Google.Ads.Datamanager.V1.IngestionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.datamanager.v1.IngestionService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :IngestAudienceMembers,
      Google.Ads.Datamanager.V1.IngestAudienceMembersRequest,
      Google.Ads.Datamanager.V1.IngestAudienceMembersResponse

  rpc :RemoveAudienceMembers,
      Google.Ads.Datamanager.V1.RemoveAudienceMembersRequest,
      Google.Ads.Datamanager.V1.RemoveAudienceMembersResponse

  rpc :IngestEvents,
      Google.Ads.Datamanager.V1.IngestEventsRequest,
      Google.Ads.Datamanager.V1.IngestEventsResponse
end

defmodule Google.Ads.Datamanager.V1.IngestionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Datamanager.V1.IngestionService.Service
end
