defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.ExportEvaluatedDataItemsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination_bigquery_uri: String.t(),
          override_existing_table: boolean
        }

  defstruct [:destination_bigquery_uri, :override_existing_table]

  field :destination_bigquery_uri, 1, type: :string, json_name: "destinationBigqueryUri"
  field :override_existing_table, 2, type: :bool, json_name: "overrideExistingTable"

  def transform_module(), do: nil
end
