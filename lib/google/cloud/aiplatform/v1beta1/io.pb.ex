defmodule Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource.ResourceId.ResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESOURCE_TYPE_UNSPECIFIED, 0
  field :RESOURCE_TYPE_FILE, 1
  field :RESOURCE_TYPE_FOLDER, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.AvroSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcs_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsSource,
    json_name: "gcsSource",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CsvSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcs_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsSource,
    json_name: "gcsSource",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uris, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GcsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BigQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BigQueryDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :output_uri, 1, type: :string, json_name: "outputUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CsvDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcs_destination, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TFRecordDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcs_destination, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ContainerRegistryDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :output_uri, 1, type: :string, json_name: "outputUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource.ResourceId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_type, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource.ResourceId.ResourceType,
    json_name: "resourceType",
    enum: true,
    deprecated: false

  field :resource_id, 2, type: :string, json_name: "resourceId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_ids, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource.ResourceId,
    json_name: "resourceIds",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DirectUploadSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.SlackSource.SlackChannels.SlackChannel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :channel_id, 1, type: :string, json_name: "channelId", deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SlackSource.SlackChannels do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :channels, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.SlackSource.SlackChannels.SlackChannel,
    deprecated: false

  field :api_key_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ApiAuth.ApiKeyConfig,
    json_name: "apiKeyConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SlackSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :channels, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.SlackSource.SlackChannels,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.JiraSource.JiraQueries do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :projects, 3, repeated: true, type: :string
  field :custom_queries, 4, repeated: true, type: :string, json_name: "customQueries"
  field :email, 5, type: :string, deprecated: false
  field :server_uri, 6, type: :string, json_name: "serverUri", deprecated: false

  field :api_key_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.ApiAuth.ApiKeyConfig,
    json_name: "apiKeyConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.JiraSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :jira_queries, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.JiraSource.JiraQueries,
    json_name: "jiraQueries",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SharePointSources.SharePointSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :folder_source, 0

  oneof :drive_source, 1

  field :sharepoint_folder_path, 5, type: :string, json_name: "sharepointFolderPath", oneof: 0
  field :sharepoint_folder_id, 6, type: :string, json_name: "sharepointFolderId", oneof: 0
  field :drive_name, 7, type: :string, json_name: "driveName", oneof: 1
  field :drive_id, 8, type: :string, json_name: "driveId", oneof: 1
  field :client_id, 1, type: :string, json_name: "clientId"

  field :client_secret, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ApiAuth.ApiKeyConfig,
    json_name: "clientSecret"

  field :tenant_id, 3, type: :string, json_name: "tenantId"
  field :sharepoint_site_name, 4, type: :string, json_name: "sharepointSiteName"
  field :file_id, 9, type: :string, json_name: "fileId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SharePointSources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :share_point_sources, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.SharePointSources.SharePointSource,
    json_name: "sharePointSources"
end
