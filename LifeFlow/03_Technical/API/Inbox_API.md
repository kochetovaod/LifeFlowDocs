# Inbox API (v1)

## GET /v1/inbox
- Query: `status?`, `cursor?`, `limit?`

## POST /v1/inbox
- Body: `{source, payload, request_id}` — создание входящего элемента (из виджета/интеграции).

## POST /v1/inbox/{id}/convert
- Body: `{type: task|event|note, mapped_fields, request_id}` — конвертация во внутренние сущности.

## PATCH /v1/inbox/{id}
- Body: `{status?, payload?, request_id}` (статусы: new, converted, archived).

## DELETE /v1/inbox/{id}
- Body: `{request_id}`

Ответы содержат `created_at` и `updated_at`, пригодны для офлайн-синхронизации.
