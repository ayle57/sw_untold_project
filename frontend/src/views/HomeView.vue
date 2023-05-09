<template>
  <div class="home">
    <Modal title="My Modal" ref="modal"></Modal>
    <button @click="modal.show()">Show Modal</button>
  </div>
</template>

<script lang="ts">
import { Component, Ref, Vue } from "vue-property-decorator";
import Modal from "@/components/shared/ModalComponent.vue";

@Component({
  components: {
    Modal,
  },
})
export default class HomeView extends Vue {
  @Ref() modal!: Modal;
}
</script>
