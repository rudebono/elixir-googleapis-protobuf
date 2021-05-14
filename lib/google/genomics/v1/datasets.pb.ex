defmodule Google.Genomics.V1.Dataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          project_id: String.t(),
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:id, :project_id, :name, :create_time]

  field :id, 1, type: :string
  field :project_id, 2, type: :string
  field :name, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Genomics.V1.ListDatasetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:project_id, :page_size, :page_token]

  field :project_id, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Genomics.V1.ListDatasetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          datasets: [Google.Genomics.V1.Dataset.t()],
          next_page_token: String.t()
        }

  defstruct [:datasets, :next_page_token]

  field :datasets, 1, repeated: true, type: Google.Genomics.V1.Dataset
  field :next_page_token, 2, type: :string
end

defmodule Google.Genomics.V1.CreateDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: Google.Genomics.V1.Dataset.t() | nil
        }

  defstruct [:dataset]

  field :dataset, 1, type: Google.Genomics.V1.Dataset
end

defmodule Google.Genomics.V1.UpdateDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t(),
          dataset: Google.Genomics.V1.Dataset.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:dataset_id, :dataset, :update_mask]

  field :dataset_id, 1, type: :string
  field :dataset, 2, type: Google.Genomics.V1.Dataset
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Genomics.V1.DeleteDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t()
        }

  defstruct [:dataset_id]

  field :dataset_id, 1, type: :string
end

defmodule Google.Genomics.V1.UndeleteDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t()
        }

  defstruct [:dataset_id]

  field :dataset_id, 1, type: :string
end

defmodule Google.Genomics.V1.GetDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t()
        }

  defstruct [:dataset_id]

  field :dataset_id, 1, type: :string
end
