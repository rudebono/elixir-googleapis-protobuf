defmodule Google.Ads.Googleads.V19.Services.AppendLeadConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :conversations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.Conversation,
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.AppendLeadConversationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :responses, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.ConversationOrError,
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.Conversation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :local_services_lead, 1, type: :string, json_name: "localServicesLead", deprecated: false
  field :text, 2, type: :string, deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.ConversationOrError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :append_lead_conversation_response, 0

  field :local_services_lead_conversation, 1,
    type: :string,
    json_name: "localServicesLeadConversation",
    oneof: 0

  field :partial_failure_error, 2,
    type: Google.Rpc.Status,
    json_name: "partialFailureError",
    oneof: 0
end

defmodule Google.Ads.Googleads.V19.Services.LocalServicesLeadService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v19.services.LocalServicesLeadService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :AppendLeadConversation,
      Google.Ads.Googleads.V19.Services.AppendLeadConversationRequest,
      Google.Ads.Googleads.V19.Services.AppendLeadConversationResponse
end

defmodule Google.Ads.Googleads.V19.Services.LocalServicesLeadService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V19.Services.LocalServicesLeadService.Service
end
