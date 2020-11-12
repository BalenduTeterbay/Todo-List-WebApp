
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<div class="container">
    <H1>Welcome ${name}!, Here is your list</H1>
    <table class ="table table-striped">
    <caption> Your List is shown below</caption>
    <thead>
         <tr>
             <th>Description</th>
             <th>Target Date</th>
             <th>Would you like to Update it?</th>
             <th>Would you like to Delete it?</th>
         <tr>
     </thead>
     <tbody>
        <c:forEach items="${todos}" var="todo">	
          <tr>
             <td>${todo.desc}</td>
             <td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"/></td>
             <td><a type="button" class="btn btn-success" href="/update-todo?id=${todo.id}"> UPDATE</a>  </td>
             <td><a type="button" class="btn btn-warning" href="/delete-todo?id=${todo.id}"> DELETE</a>  </td>
          </tr>
          </c:forEach>
     </tbody>
     

</table>


<!-- Your password is ${pass}  -->

Your name is ${name}
<BR/>
<div><a class="button" href="/add-todo">Click here to add a todo</a> </div>

      
</div>
    
    <%@ include file="common/footer.jspf" %> 