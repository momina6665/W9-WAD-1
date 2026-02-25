<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title>User Information</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: lightgray;
        }
        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <h2>User Information Table</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Role</th>
            <th>Email</th>
        </tr>
        <xsl:for-each select="users/user">
            <tr>
                <td><xsl:value-of select="id"/></td>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="deptment"/></td>
                <td><xsl:value-of select="role"/></td>
                <td><xsl:value-of select="email"/></td>
            </tr>
        </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>