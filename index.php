<!DOCTYPE html>
<html>
	<head>
		<title>Testando</title>
	</head>
	<body>
		<form method="POST" action="busca.php">
			<select name="identidade">
				<option value="0" disabled selected> Escolha um identificador </option>
				<option value="1">Atualizar</option>
				<option value="2">Deletar</option>
				<option value="3">Inserir</option>
			</select>

			<input type="text" name="nome">

			<input type="submit" name="Validar">

		</form>
	</body>
</html>