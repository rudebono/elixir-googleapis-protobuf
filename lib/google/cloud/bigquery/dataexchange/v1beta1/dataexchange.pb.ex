defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.DataExchange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          primary_contact: String.t(),
          documentation: String.t(),
          listing_count: integer,
          icon: binary
        }

  defstruct name: "",
            display_name: "",
            description: "",
            primary_contact: "",
            documentation: "",
            listing_count: 0,
            icon: ""

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :primary_contact, 4, type: :string, json_name: "primaryContact", deprecated: false
  field :documentation, 5, type: :string, deprecated: false
  field :listing_count, 6, type: :int32, json_name: "listingCount", deprecated: false
  field :icon, 7, type: :bytes, deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.DataProvider do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          primary_contact: String.t()
        }

  defstruct name: "",
            primary_contact: ""

  field :name, 1, type: :string, deprecated: false
  field :primary_contact, 2, type: :string, json_name: "primaryContact", deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.Publisher do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          primary_contact: String.t()
        }

  defstruct name: "",
            primary_contact: ""

  field :name, 1, type: :string, deprecated: false
  field :primary_contact, 2, type: :string, json_name: "primaryContact", deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.DestinationDatasetReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t(),
          project_id: String.t()
        }

  defstruct dataset_id: "",
            project_id: ""

  field :dataset_id, 1, type: :string, json_name: "datasetId", deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId", deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.DestinationDataset.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.DestinationDataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_reference:
            Google.Cloud.Bigquery.Dataexchange.V1beta1.DestinationDatasetReference.t() | nil,
          friendly_name: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          labels: %{String.t() => String.t()},
          location: String.t()
        }

  defstruct dataset_reference: nil,
            friendly_name: nil,
            description: nil,
            labels: %{},
            location: ""

  field :dataset_reference, 1,
    type: Google.Cloud.Bigquery.Dataexchange.V1beta1.DestinationDatasetReference,
    json_name: "datasetReference",
    deprecated: false

  field :friendly_name, 2,
    type: Google.Protobuf.StringValue,
    json_name: "friendlyName",
    deprecated: false

  field :description, 3, type: Google.Protobuf.StringValue, deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Bigquery.Dataexchange.V1beta1.DestinationDataset.LabelsEntry,
    map: true,
    deprecated: false

  field :location, 5, type: :string, deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing.BigQueryDatasetSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t()
        }

  defstruct dataset: ""

  field :dataset, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:bigquery_dataset,
             Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing.BigQueryDatasetSource.t() | nil},
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          primary_contact: String.t(),
          documentation: String.t(),
          state: Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing.State.t(),
          icon: binary,
          data_provider: Google.Cloud.Bigquery.Dataexchange.V1beta1.DataProvider.t() | nil,
          categories: [Google.Cloud.Bigquery.Dataexchange.Common.Category.t()],
          publisher: Google.Cloud.Bigquery.Dataexchange.V1beta1.Publisher.t() | nil,
          request_access: String.t()
        }

  defstruct source: nil,
            name: "",
            display_name: "",
            description: "",
            primary_contact: "",
            documentation: "",
            state: :STATE_UNSPECIFIED,
            icon: "",
            data_provider: nil,
            categories: [],
            publisher: nil,
            request_access: ""

  oneof :source, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :primary_contact, 4, type: :string, json_name: "primaryContact", deprecated: false
  field :documentation, 5, type: :string, deprecated: false

  field :bigquery_dataset, 6,
    type: Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing.BigQueryDatasetSource,
    json_name: "bigqueryDataset",
    oneof: 0,
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing.State,
    enum: true,
    deprecated: false

  field :icon, 8, type: :bytes, deprecated: false

  field :data_provider, 9,
    type: Google.Cloud.Bigquery.Dataexchange.V1beta1.DataProvider,
    json_name: "dataProvider",
    deprecated: false

  field :categories, 10,
    repeated: true,
    type: Google.Cloud.Bigquery.Dataexchange.Common.Category,
    enum: true,
    deprecated: false

  field :publisher, 11,
    type: Google.Cloud.Bigquery.Dataexchange.V1beta1.Publisher,
    deprecated: false

  field :request_access, 12, type: :string, json_name: "requestAccess", deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.ListDataExchangesRequest do
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
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.ListDataExchangesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_exchanges: [Google.Cloud.Bigquery.Dataexchange.V1beta1.DataExchange.t()],
          next_page_token: String.t()
        }

  defstruct data_exchanges: [],
            next_page_token: ""

  field :data_exchanges, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Dataexchange.V1beta1.DataExchange,
    json_name: "dataExchanges"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.ListOrgDataExchangesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          organization: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct organization: "",
            page_size: 0,
            page_token: ""

  field :organization, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.ListOrgDataExchangesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_exchanges: [Google.Cloud.Bigquery.Dataexchange.V1beta1.DataExchange.t()],
          next_page_token: String.t()
        }

  defstruct data_exchanges: [],
            next_page_token: ""

  field :data_exchanges, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Dataexchange.V1beta1.DataExchange,
    json_name: "dataExchanges"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.GetDataExchangeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.CreateDataExchangeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          data_exchange_id: String.t(),
          data_exchange: Google.Cloud.Bigquery.Dataexchange.V1beta1.DataExchange.t() | nil
        }

  defstruct parent: "",
            data_exchange_id: "",
            data_exchange: nil

  field :parent, 1, type: :string, deprecated: false
  field :data_exchange_id, 2, type: :string, json_name: "dataExchangeId", deprecated: false

  field :data_exchange, 3,
    type: Google.Cloud.Bigquery.Dataexchange.V1beta1.DataExchange,
    json_name: "dataExchange",
    deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.UpdateDataExchangeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          data_exchange: Google.Cloud.Bigquery.Dataexchange.V1beta1.DataExchange.t() | nil
        }

  defstruct update_mask: nil,
            data_exchange: nil

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :data_exchange, 2,
    type: Google.Cloud.Bigquery.Dataexchange.V1beta1.DataExchange,
    json_name: "dataExchange",
    deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.DeleteDataExchangeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.ListListingsRequest do
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
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.ListListingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          listings: [Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing.t()],
          next_page_token: String.t()
        }

  defstruct listings: [],
            next_page_token: ""

  field :listings, 1, repeated: true, type: Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.GetListingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.CreateListingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          listing_id: String.t(),
          listing: Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing.t() | nil
        }

  defstruct parent: "",
            listing_id: "",
            listing: nil

  field :parent, 1, type: :string, deprecated: false
  field :listing_id, 2, type: :string, json_name: "listingId", deprecated: false
  field :listing, 3, type: Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing, deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.UpdateListingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          listing: Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing.t() | nil
        }

  defstruct update_mask: nil,
            listing: nil

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :listing, 2, type: Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing, deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.DeleteListingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.SubscribeListingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:destination_dataset,
             Google.Cloud.Bigquery.Dataexchange.V1beta1.DestinationDataset.t() | nil},
          name: String.t()
        }

  defstruct destination: nil,
            name: ""

  oneof :destination, 0

  field :name, 1, type: :string, deprecated: false

  field :destination_dataset, 3,
    type: Google.Cloud.Bigquery.Dataexchange.V1beta1.DestinationDataset,
    json_name: "destinationDataset",
    oneof: 0
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.SubscribeListingResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.AnalyticsHubService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.dataexchange.v1beta1.AnalyticsHubService"

  rpc :ListDataExchanges,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.ListDataExchangesRequest,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.ListDataExchangesResponse

  rpc :ListOrgDataExchanges,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.ListOrgDataExchangesRequest,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.ListOrgDataExchangesResponse

  rpc :GetDataExchange,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.GetDataExchangeRequest,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.DataExchange

  rpc :CreateDataExchange,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.CreateDataExchangeRequest,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.DataExchange

  rpc :UpdateDataExchange,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.UpdateDataExchangeRequest,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.DataExchange

  rpc :DeleteDataExchange,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.DeleteDataExchangeRequest,
      Google.Protobuf.Empty

  rpc :ListListings,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.ListListingsRequest,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.ListListingsResponse

  rpc :GetListing,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.GetListingRequest,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing

  rpc :CreateListing,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.CreateListingRequest,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing

  rpc :UpdateListing,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.UpdateListingRequest,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.Listing

  rpc :DeleteListing,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.DeleteListingRequest,
      Google.Protobuf.Empty

  rpc :SubscribeListing,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.SubscribeListingRequest,
      Google.Cloud.Bigquery.Dataexchange.V1beta1.SubscribeListingResponse

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Bigquery.Dataexchange.V1beta1.AnalyticsHubService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.Dataexchange.V1beta1.AnalyticsHubService.Service
end
