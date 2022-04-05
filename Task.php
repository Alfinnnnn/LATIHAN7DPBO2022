<?php 

class Task extends DB{
	
	// Mengambil data
	function getTask(){
		// Query mysql select data ke tb_to_do
		$query = "SELECT * FROM tb_to_do";

		// Mengeksekusi query
		return $this->execute($query);
	}

	function add($tname, $tdeadline, $tdetails, $tsubject, $tpriority){
		// Proses input query mysql
		$query = "INSERT INTO tb_to_do (name_td, details_td, subject_td, priority_td, deadline_td, status_td) values ('$tname', '$tdetails', '$tsubject', '$tpriority', 
		'$tdeadline', 'Belum')";
		return $this->execute($query);
	}
	function hapus($id){
		// Delete record berdasarkan ID hapus pada index (id Hapus = ID_Data)
		$query = "DELETE FROM tb_to_do where id = $id";
		return $this->execute($query);
	}
	function selesai($id){
		// Mengubah status berdasrkan ID Hapus pada Index
		$query = "UPDATE tb_to_do set status_TD = 'Sudah' where id=$id";
		return $this->execute($query);
	}

	// Sorting data
	function sorting($kolom){
		// Proses sorting query mysql
		$query = "SELECT * FROM tb_to_do ORDER BY $kolom ASC";
		return $this->execute($query);
	}
	
}

?>