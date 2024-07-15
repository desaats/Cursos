SELECT * FROM [Course]
SELECT * FROM [Student]
SELECT * FROM [StudentCourse]

INSERT INTO 
   [Student]
VALUES(
    '360c1eac-6bde-4549-bda3-c7b89463aa4a',
    'Alan Sá',
    'hello@gmail.com',
    '14558545',
    '125545',
    NULL,
    GETDATE()
);

INSERT INTO
    [StudentCourse]
VALUES(
    '5f5a33f8-4ff3-7e10-cc6e-3fa000000000',
    '360c1eac-6bde-4549-bda3-c7b89463aa4a',
    '50',
    '0',
    '2020-01-13 12:35:54',
    GETDATE()
)