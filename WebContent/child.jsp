<%@page import="java.sql.*"%>
<%@page import="com.hartford.hospital.DbConnection"%>
<HTML>
<HEAD>
<TITLE>Doctor's Information</TITLE>
</HEAD>
<BODY bgcolor="orange">

	<p>
		<FONT FACE="Cosmic Sans MS" color="red" size="10"> <I><U><b><P
							align="center">Doctor's Information
		</I></U></b> </FONT>
	<HR width="100%" SIZE="6" noshade>
	<br>
	<P align="center">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
	<TABLE borderColor=black cellSpacing=0 border=1>
		<TBODY>
			<TR>
				<TH>Doctor_name</TH>
				<TH>Spacialist</TH>
				<TH>Visiting_time</TH>
				<TH>Contact_No</TH>
				<TH>Email</TH>
				<TH>Address</TH>
			</TR>
			<%
				try {
					Connection con = DbConnection.getConnection();
					Statement stmt = con.createStatement();
					ResultSet rs = stmt
							.executeQuery("select Doctor_Name,Specialist,Visiting_Time,Contact_No,Email,Address from Doctor_Table where Specialist='child'");
					while (rs.next()) {
			%>
			<tr>
				<TD><%=rs.getString(1)%></TD>
				<TD><%=rs.getString(2)%></TD>
				<TD><%=rs.getString(3)%></TD>
				<TD><%=rs.getString(4)%></TD>
				<TD><%=rs.getString(5)%></TD>
				<TD><%=rs.getString(6)%></TD>
			</TR>
			<%
				}
				} catch (SQLException e) {
					System.out.println("SQL Error" + e);
				}
			%>
		</TBODY>
	</TABLE>
</BODY>
</HTML>










