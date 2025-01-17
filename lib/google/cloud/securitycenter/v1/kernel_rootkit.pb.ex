defmodule Google.Cloud.Securitycenter.V1.KernelRootkit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :unexpected_code_modification, 2, type: :bool, json_name: "unexpectedCodeModification"

  field :unexpected_read_only_data_modification, 3,
    type: :bool,
    json_name: "unexpectedReadOnlyDataModification"

  field :unexpected_ftrace_handler, 4, type: :bool, json_name: "unexpectedFtraceHandler"
  field :unexpected_kprobe_handler, 5, type: :bool, json_name: "unexpectedKprobeHandler"
  field :unexpected_kernel_code_pages, 6, type: :bool, json_name: "unexpectedKernelCodePages"
  field :unexpected_system_call_handler, 7, type: :bool, json_name: "unexpectedSystemCallHandler"
  field :unexpected_interrupt_handler, 8, type: :bool, json_name: "unexpectedInterruptHandler"

  field :unexpected_processes_in_runqueue, 9,
    type: :bool,
    json_name: "unexpectedProcessesInRunqueue"
end
