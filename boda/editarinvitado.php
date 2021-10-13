<!-- Modal -->
<div class="modal fade" id="invitado_<?php echo $row['lspId'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Asistencia</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <form method="POST" action="ActualizarConfirmacion.php?id=<?php echo $row['lspId'] ?>">
                    <div class="conteiner">
                        <select name="Confirmacion" id="Confirmacion" class="btn btn-secondary btn-lg" type="button">
                            <option value="1">Asistir</option>
                            <option value="2">No asistir</option>
                           
                        </select>
                    </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="submit" name="ConfirmarAsistencia" class="btn btn-primary">Guardar</button>

            </div>

            </form>
        </div>
    </div>
</div>