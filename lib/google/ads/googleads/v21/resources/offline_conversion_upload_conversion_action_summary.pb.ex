defmodule Google.Ads.Googleads.V21.Resources.OfflineConversionUploadConversionActionSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :client, 2,
    type: Google.Ads.Googleads.V21.Enums.OfflineEventUploadClientEnum.OfflineEventUploadClient,
    enum: true,
    deprecated: false

  field :conversion_action_id, 3, type: :int64, json_name: "conversionActionId", deprecated: false

  field :conversion_action_name, 4,
    type: :string,
    json_name: "conversionActionName",
    deprecated: false

  field :status, 5,
    type:
      Google.Ads.Googleads.V21.Enums.OfflineConversionDiagnosticStatusEnum.OfflineConversionDiagnosticStatus,
    enum: true,
    deprecated: false

  field :total_event_count, 6, type: :int64, json_name: "totalEventCount", deprecated: false

  field :successful_event_count, 7,
    type: :int64,
    json_name: "successfulEventCount",
    deprecated: false

  field :pending_event_count, 8, type: :int64, json_name: "pendingEventCount", deprecated: false

  field :last_upload_date_time, 9,
    type: :string,
    json_name: "lastUploadDateTime",
    deprecated: false

  field :daily_summaries, 10,
    repeated: true,
    type: Google.Ads.Googleads.V21.Resources.OfflineConversionSummary,
    json_name: "dailySummaries",
    deprecated: false

  field :job_summaries, 11,
    repeated: true,
    type: Google.Ads.Googleads.V21.Resources.OfflineConversionSummary,
    json_name: "jobSummaries",
    deprecated: false

  field :alerts, 12,
    repeated: true,
    type: Google.Ads.Googleads.V21.Resources.OfflineConversionAlert,
    deprecated: false
end
