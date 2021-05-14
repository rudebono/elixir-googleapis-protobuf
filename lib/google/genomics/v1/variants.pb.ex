defmodule Google.Genomics.V1.InfoMergeOperation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :INFO_MERGE_OPERATION_UNSPECIFIED | :IGNORE_NEW | :MOVE_TO_CALLS

  field :INFO_MERGE_OPERATION_UNSPECIFIED, 0

  field :IGNORE_NEW, 1

  field :MOVE_TO_CALLS, 2
end

defmodule Google.Genomics.V1.VariantSetMetadata.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :INTEGER | :FLOAT | :FLAG | :CHARACTER | :STRING

  field :TYPE_UNSPECIFIED, 0

  field :INTEGER, 1

  field :FLOAT, 2

  field :FLAG, 3

  field :CHARACTER, 4

  field :STRING, 5
end

defmodule Google.Genomics.V1.ImportVariantsRequest.Format do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FORMAT_UNSPECIFIED | :FORMAT_VCF | :FORMAT_COMPLETE_GENOMICS

  field :FORMAT_UNSPECIFIED, 0

  field :FORMAT_VCF, 1

  field :FORMAT_COMPLETE_GENOMICS, 2
end

defmodule Google.Genomics.V1.ExportVariantSetRequest.Format do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FORMAT_UNSPECIFIED | :FORMAT_BIGQUERY

  field :FORMAT_UNSPECIFIED, 0

  field :FORMAT_BIGQUERY, 1
end

defmodule Google.Genomics.V1.VariantSetMetadata.InfoEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.ListValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.VariantSetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t(),
          id: String.t(),
          type: Google.Genomics.V1.VariantSetMetadata.Type.t(),
          number: String.t(),
          description: String.t(),
          info: %{String.t() => Google.Protobuf.ListValue.t() | nil}
        }

  defstruct [:key, :value, :id, :type, :number, :description, :info]

  field :key, 1, type: :string
  field :value, 2, type: :string
  field :id, 4, type: :string
  field :type, 5, type: Google.Genomics.V1.VariantSetMetadata.Type, enum: true
  field :number, 8, type: :string
  field :description, 7, type: :string
  field :info, 3, repeated: true, type: Google.Genomics.V1.VariantSetMetadata.InfoEntry, map: true
end

defmodule Google.Genomics.V1.VariantSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t(),
          id: String.t(),
          reference_set_id: String.t(),
          reference_bounds: [Google.Genomics.V1.ReferenceBound.t()],
          metadata: [Google.Genomics.V1.VariantSetMetadata.t()],
          name: String.t(),
          description: String.t()
        }

  defstruct [
    :dataset_id,
    :id,
    :reference_set_id,
    :reference_bounds,
    :metadata,
    :name,
    :description
  ]

  field :dataset_id, 1, type: :string
  field :id, 2, type: :string
  field :reference_set_id, 6, type: :string
  field :reference_bounds, 5, repeated: true, type: Google.Genomics.V1.ReferenceBound
  field :metadata, 4, repeated: true, type: Google.Genomics.V1.VariantSetMetadata
  field :name, 7, type: :string
  field :description, 8, type: :string
end

defmodule Google.Genomics.V1.Variant.InfoEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.ListValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.Variant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_set_id: String.t(),
          id: String.t(),
          names: [String.t()],
          created: integer,
          reference_name: String.t(),
          start: integer,
          end: integer,
          reference_bases: String.t(),
          alternate_bases: [String.t()],
          quality: float | :infinity | :negative_infinity | :nan,
          filter: [String.t()],
          info: %{String.t() => Google.Protobuf.ListValue.t() | nil},
          calls: [Google.Genomics.V1.VariantCall.t()]
        }

  defstruct [
    :variant_set_id,
    :id,
    :names,
    :created,
    :reference_name,
    :start,
    :end,
    :reference_bases,
    :alternate_bases,
    :quality,
    :filter,
    :info,
    :calls
  ]

  field :variant_set_id, 15, type: :string
  field :id, 2, type: :string
  field :names, 3, repeated: true, type: :string
  field :created, 12, type: :int64
  field :reference_name, 14, type: :string
  field :start, 16, type: :int64
  field :end, 13, type: :int64
  field :reference_bases, 6, type: :string
  field :alternate_bases, 7, repeated: true, type: :string
  field :quality, 8, type: :double
  field :filter, 9, repeated: true, type: :string
  field :info, 10, repeated: true, type: Google.Genomics.V1.Variant.InfoEntry, map: true
  field :calls, 11, repeated: true, type: Google.Genomics.V1.VariantCall
end

defmodule Google.Genomics.V1.VariantCall.InfoEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.ListValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.VariantCall do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_set_id: String.t(),
          call_set_name: String.t(),
          genotype: [integer],
          phaseset: String.t(),
          genotype_likelihood: [float | :infinity | :negative_infinity | :nan],
          info: %{String.t() => Google.Protobuf.ListValue.t() | nil}
        }

  defstruct [:call_set_id, :call_set_name, :genotype, :phaseset, :genotype_likelihood, :info]

  field :call_set_id, 8, type: :string
  field :call_set_name, 9, type: :string
  field :genotype, 7, repeated: true, type: :int32
  field :phaseset, 5, type: :string
  field :genotype_likelihood, 6, repeated: true, type: :double
  field :info, 2, repeated: true, type: Google.Genomics.V1.VariantCall.InfoEntry, map: true
end

defmodule Google.Genomics.V1.CallSet.InfoEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.ListValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.CallSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          sample_id: String.t(),
          variant_set_ids: [String.t()],
          created: integer,
          info: %{String.t() => Google.Protobuf.ListValue.t() | nil}
        }

  defstruct [:id, :name, :sample_id, :variant_set_ids, :created, :info]

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :sample_id, 7, type: :string
  field :variant_set_ids, 6, repeated: true, type: :string
  field :created, 5, type: :int64
  field :info, 4, repeated: true, type: Google.Genomics.V1.CallSet.InfoEntry, map: true
end

defmodule Google.Genomics.V1.ReferenceBound do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference_name: String.t(),
          upper_bound: integer
        }

  defstruct [:reference_name, :upper_bound]

  field :reference_name, 1, type: :string
  field :upper_bound, 2, type: :int64
end

defmodule Google.Genomics.V1.ImportVariantsRequest.InfoMergeConfigEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Genomics.V1.InfoMergeOperation.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Genomics.V1.InfoMergeOperation, enum: true
end

defmodule Google.Genomics.V1.ImportVariantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_set_id: String.t(),
          source_uris: [String.t()],
          format: Google.Genomics.V1.ImportVariantsRequest.Format.t(),
          normalize_reference_names: boolean,
          info_merge_config: %{String.t() => Google.Genomics.V1.InfoMergeOperation.t()}
        }

  defstruct [
    :variant_set_id,
    :source_uris,
    :format,
    :normalize_reference_names,
    :info_merge_config
  ]

  field :variant_set_id, 1, type: :string
  field :source_uris, 2, repeated: true, type: :string
  field :format, 3, type: Google.Genomics.V1.ImportVariantsRequest.Format, enum: true
  field :normalize_reference_names, 5, type: :bool

  field :info_merge_config, 6,
    repeated: true,
    type: Google.Genomics.V1.ImportVariantsRequest.InfoMergeConfigEntry,
    map: true
end

defmodule Google.Genomics.V1.ImportVariantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_set_ids: [String.t()]
        }

  defstruct [:call_set_ids]

  field :call_set_ids, 1, repeated: true, type: :string
end

defmodule Google.Genomics.V1.CreateVariantSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_set: Google.Genomics.V1.VariantSet.t() | nil
        }

  defstruct [:variant_set]

  field :variant_set, 1, type: Google.Genomics.V1.VariantSet
end

defmodule Google.Genomics.V1.ExportVariantSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_set_id: String.t(),
          call_set_ids: [String.t()],
          project_id: String.t(),
          format: Google.Genomics.V1.ExportVariantSetRequest.Format.t(),
          bigquery_dataset: String.t(),
          bigquery_table: String.t()
        }

  defstruct [
    :variant_set_id,
    :call_set_ids,
    :project_id,
    :format,
    :bigquery_dataset,
    :bigquery_table
  ]

  field :variant_set_id, 1, type: :string
  field :call_set_ids, 2, repeated: true, type: :string
  field :project_id, 3, type: :string
  field :format, 4, type: Google.Genomics.V1.ExportVariantSetRequest.Format, enum: true
  field :bigquery_dataset, 5, type: :string
  field :bigquery_table, 6, type: :string
end

defmodule Google.Genomics.V1.GetVariantSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_set_id: String.t()
        }

  defstruct [:variant_set_id]

  field :variant_set_id, 1, type: :string
end

defmodule Google.Genomics.V1.SearchVariantSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_ids: [String.t()],
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:dataset_ids, :page_token, :page_size]

  field :dataset_ids, 1, repeated: true, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Genomics.V1.SearchVariantSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_sets: [Google.Genomics.V1.VariantSet.t()],
          next_page_token: String.t()
        }

  defstruct [:variant_sets, :next_page_token]

  field :variant_sets, 1, repeated: true, type: Google.Genomics.V1.VariantSet
  field :next_page_token, 2, type: :string
end

defmodule Google.Genomics.V1.DeleteVariantSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_set_id: String.t()
        }

  defstruct [:variant_set_id]

  field :variant_set_id, 1, type: :string
end

defmodule Google.Genomics.V1.UpdateVariantSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_set_id: String.t(),
          variant_set: Google.Genomics.V1.VariantSet.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:variant_set_id, :variant_set, :update_mask]

  field :variant_set_id, 1, type: :string
  field :variant_set, 2, type: Google.Genomics.V1.VariantSet
  field :update_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Google.Genomics.V1.SearchVariantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_set_ids: [String.t()],
          variant_name: String.t(),
          call_set_ids: [String.t()],
          reference_name: String.t(),
          start: integer,
          end: integer,
          page_token: String.t(),
          page_size: integer,
          max_calls: integer
        }

  defstruct [
    :variant_set_ids,
    :variant_name,
    :call_set_ids,
    :reference_name,
    :start,
    :end,
    :page_token,
    :page_size,
    :max_calls
  ]

  field :variant_set_ids, 1, repeated: true, type: :string
  field :variant_name, 2, type: :string
  field :call_set_ids, 3, repeated: true, type: :string
  field :reference_name, 4, type: :string
  field :start, 5, type: :int64
  field :end, 6, type: :int64
  field :page_token, 7, type: :string
  field :page_size, 8, type: :int32
  field :max_calls, 9, type: :int32
end

defmodule Google.Genomics.V1.SearchVariantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variants: [Google.Genomics.V1.Variant.t()],
          next_page_token: String.t()
        }

  defstruct [:variants, :next_page_token]

  field :variants, 1, repeated: true, type: Google.Genomics.V1.Variant
  field :next_page_token, 2, type: :string
end

defmodule Google.Genomics.V1.CreateVariantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant: Google.Genomics.V1.Variant.t() | nil
        }

  defstruct [:variant]

  field :variant, 1, type: Google.Genomics.V1.Variant
end

defmodule Google.Genomics.V1.UpdateVariantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_id: String.t(),
          variant: Google.Genomics.V1.Variant.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:variant_id, :variant, :update_mask]

  field :variant_id, 1, type: :string
  field :variant, 2, type: Google.Genomics.V1.Variant
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Genomics.V1.DeleteVariantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_id: String.t()
        }

  defstruct [:variant_id]

  field :variant_id, 1, type: :string
end

defmodule Google.Genomics.V1.GetVariantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_id: String.t()
        }

  defstruct [:variant_id]

  field :variant_id, 1, type: :string
end

defmodule Google.Genomics.V1.MergeVariantsRequest.InfoMergeConfigEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Genomics.V1.InfoMergeOperation.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Genomics.V1.InfoMergeOperation, enum: true
end

defmodule Google.Genomics.V1.MergeVariantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_set_id: String.t(),
          variants: [Google.Genomics.V1.Variant.t()],
          info_merge_config: %{String.t() => Google.Genomics.V1.InfoMergeOperation.t()}
        }

  defstruct [:variant_set_id, :variants, :info_merge_config]

  field :variant_set_id, 1, type: :string
  field :variants, 2, repeated: true, type: Google.Genomics.V1.Variant

  field :info_merge_config, 3,
    repeated: true,
    type: Google.Genomics.V1.MergeVariantsRequest.InfoMergeConfigEntry,
    map: true
end

defmodule Google.Genomics.V1.SearchCallSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variant_set_ids: [String.t()],
          name: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:variant_set_ids, :name, :page_token, :page_size]

  field :variant_set_ids, 1, repeated: true, type: :string
  field :name, 2, type: :string
  field :page_token, 3, type: :string
  field :page_size, 4, type: :int32
end

defmodule Google.Genomics.V1.SearchCallSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_sets: [Google.Genomics.V1.CallSet.t()],
          next_page_token: String.t()
        }

  defstruct [:call_sets, :next_page_token]

  field :call_sets, 1, repeated: true, type: Google.Genomics.V1.CallSet
  field :next_page_token, 2, type: :string
end

defmodule Google.Genomics.V1.CreateCallSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_set: Google.Genomics.V1.CallSet.t() | nil
        }

  defstruct [:call_set]

  field :call_set, 1, type: Google.Genomics.V1.CallSet
end

defmodule Google.Genomics.V1.UpdateCallSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_set_id: String.t(),
          call_set: Google.Genomics.V1.CallSet.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:call_set_id, :call_set, :update_mask]

  field :call_set_id, 1, type: :string
  field :call_set, 2, type: Google.Genomics.V1.CallSet
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Genomics.V1.DeleteCallSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_set_id: String.t()
        }

  defstruct [:call_set_id]

  field :call_set_id, 1, type: :string
end

defmodule Google.Genomics.V1.GetCallSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_set_id: String.t()
        }

  defstruct [:call_set_id]

  field :call_set_id, 1, type: :string
end

defmodule Google.Genomics.V1.StreamVariantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          variant_set_id: String.t(),
          call_set_ids: [String.t()],
          reference_name: String.t(),
          start: integer,
          end: integer
        }

  defstruct [:project_id, :variant_set_id, :call_set_ids, :reference_name, :start, :end]

  field :project_id, 1, type: :string
  field :variant_set_id, 2, type: :string
  field :call_set_ids, 3, repeated: true, type: :string
  field :reference_name, 4, type: :string
  field :start, 5, type: :int64
  field :end, 6, type: :int64
end

defmodule Google.Genomics.V1.StreamVariantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variants: [Google.Genomics.V1.Variant.t()]
        }

  defstruct [:variants]

  field :variants, 1, repeated: true, type: Google.Genomics.V1.Variant
end
