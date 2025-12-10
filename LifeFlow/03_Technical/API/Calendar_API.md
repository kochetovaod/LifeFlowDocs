# Calendar API (v1)

## GET /v1/calendar/events
- Query: `from`, `to`, `cursor?`, `limit?`, `sources?` (lifeflow/google/apple)

## POST /v1/calendar/events
- Body: `{title, starts_at, ends_at, location?, recurrence_rule?, task_id?, source?, request_id}`

## PATCH /v1/calendar/events/{id}
- Body: `{title?, starts_at?, ends_at?, location?, recurrence_rule?, request_id}`

## DELETE /v1/calendar/events/{id}
- Soft delete; body `{request_id}`

## Синхронизация
- `POST /v1/calendar/import` — подключение внешнего календаря (OAuth token в защищённом хранилище).
- `POST /v1/calendar/webhook/google` — точка для уведомлений; подписки на 60 дней вперёд.
- Все события содержат `updated_at` и `source` для разрешения конфликтов.
