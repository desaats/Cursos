DECLARE @SutdentId UNIQUEIDENTIFIER = '360c1eac-6bde-4549-bda3-c7b89463aa4a'
SELECT 
    [Student].[Name] AS [Student],
    [Course].[Title] AS [Course],
    [StudentCourse].[Progress],
    [StudentCourse].[LastUpdateDate]
FROM
    [StudentCourse]
    INNER JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]
    INNER JOIN [Course] ON [StudentCourse].[CourseId] = [Course].[Id]
WHERE
    [StudentCourse].[StudentId] = @SutdentId
    AND [StudentCourse].[Progress] < 100
    AND [StudentCourse].[Progress] > 0
ORDER BY 
    [StudentCourse].[LastUpdateDate] DESC