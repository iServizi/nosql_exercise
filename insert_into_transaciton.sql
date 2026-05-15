INSERT INTO transactions (
    sender,
    receiver,
    amount,
    timestamp,
    device_sender,
    device_receiver,
    title,
    title_embedding
)
VALUES VALUES (%s, %s, %s, %s, %s, %s, %s, %s::vector);