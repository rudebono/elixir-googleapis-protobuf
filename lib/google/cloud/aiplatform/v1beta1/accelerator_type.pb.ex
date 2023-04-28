defmodule Google.Cloud.Aiplatform.V1beta1.AcceleratorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ACCELERATOR_TYPE_UNSPECIFIED, 0
  field :NVIDIA_TESLA_K80, 1
  field :NVIDIA_TESLA_P100, 2
  field :NVIDIA_TESLA_V100, 3
  field :NVIDIA_TESLA_P4, 4
  field :NVIDIA_TESLA_T4, 5
  field :NVIDIA_TESLA_A100, 8
  field :NVIDIA_A100_80GB, 9
  field :NVIDIA_L4, 11
  field :TPU_V2, 6
  field :TPU_V3, 7
  field :TPU_V4_POD, 10
end