# STCS - Task List

Serialization test case for STC01 task list definitions (`R3TR STCS`).
Requires the SAP STC framework and an abapGit version with STCS support.

## Test objects

- `ZABAPGIT_STCS_TEST`: task list with build number `00001`.
- `ZCL_ABAPGIT_STCS_CONFIG`: configuration class using SAP's default behavior.
- `ZCL_ABAPGIT_STCS_TASK_1`: first task, with the phase override `PREPARE`.
- `ZCL_ABAPGIT_STCS_TASK_2`: second task, with the phase override `VERIFY`.

Both task classes only write a success message to the task log. They do not
change application data or system configuration.

The task list includes English and German descriptions, the `SAPTAGS` attribute
`ABAPGIT_TEST`, and task sequence numbers `00010` and `00020`. All four STCS
tables are represented in the serialized XML. Creation/change users and dates
are omitted by the serializer and populated on import.

## Manual verification

1. Import the repository into a local package using abapGit.
2. Open `ZABAPGIT_STCS_TEST` in transaction `STC01`.
3. Confirm the two tasks, their order, phase overrides, configuration class,
   descriptions, and tag.
4. Execute the task list. Both tasks should complete successfully and write
   their completion messages to the log.
5. Refresh abapGit. Importing and exporting the definition should produce no
   differences, even though the local administrative users/dates differ.

Task list runs and variants are separate runtime/customizing objects and are
not included in this repository.

## Initial validation

Validated on A4H25: SAP's task list consistency check passed, both task
implementations executed successfully, and two consecutive repository exports
were byte-identical.
