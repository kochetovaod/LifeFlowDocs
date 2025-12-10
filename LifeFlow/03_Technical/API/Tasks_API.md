# Tasks API (v1)

## GET /v1/tasks
- Query: `status?`, `goal_id?`, `due_from?`, `due_to?`, `cursor?`, `limit?`
- Response: список задач + `next_cursor`.

## POST /v1/tasks
- Body: `{title, description?, goal_id?, due_at?, priority?, estimated_minutes?, energy_level?, request_id}`
- Response: созданная задача.

## PATCH /v1/tasks/{id}
- Body: любые изменяемые поля + `request_id`.

## DELETE /v1/tasks/{id}
- Soft delete. Body: `{request_id}`.

## Подзадачи
- `POST /v1/tasks/{id}/subtasks` → `{title, request_id}`
- `PATCH /v1/subtasks/{subtask_id}` → `{title?, done?, request_id}`

## Напоминания/статусы
- `POST /v1/tasks/{id}/status` → `{status, request_id}` (todo/in_progress/done/deferred)
- `POST /v1/tasks/{id}/reminders` → `{remind_at}`

Ответы содержат `updated_at` для разрешения конфликтов офлайн-синхронизации.
