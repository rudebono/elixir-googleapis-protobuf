defmodule Google.Cloud.Geminidataanalytics.V1beta.DataAnalyticsAgent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :staging_context, 5,
    type: Google.Cloud.Geminidataanalytics.V1beta.Context,
    json_name: "stagingContext",
    deprecated: false

  field :published_context, 6,
    type: Google.Cloud.Geminidataanalytics.V1beta.Context,
    json_name: "publishedContext",
    deprecated: false

  field :last_published_context, 7,
    type: Google.Cloud.Geminidataanalytics.V1beta.Context,
    json_name: "lastPublishedContext",
    deprecated: false
end
