import { Component, OnInit, EventEmitter, Output, ViewChild, ElementRef } from '@angular/core';

@Component({
  selector: 'app-cockpit',
  templateUrl: './cockpit.component.html',
  styleUrls: ['./cockpit.component.css']
})
export class CockpitComponent implements OnInit {
  @Output() serverCreated     = new EventEmitter<{serverName : string, serverContent: string}>();
  @Output() blueprintCreated  = new EventEmitter<{blueprintName : string, blueprintContent: string}>();

  // newServerName     = '';
  // newServerContent  = '';

  // onAddServer() {
  //   this.serverCreated.emit({
  //     serverName    : this.newServerName,
  //     serverContent : this.newServerContent
  //   });
  // }

  // onAddBlueprint() {
  //   this.blueprintCreated.emit({
  //     blueprintName     : this.newServerName,
  //     blueprintContent  : this.newServerContent
  //   });
  // }
  @ViewChild('contentInput') contentInput : ElementRef;

  onAddServer(nameInput : HTMLInputElement) {
    this.serverCreated.emit({
      serverName    : nameInput.value,
      serverContent : this.contentInput.nativeElement.value
    });
  }

  onAddBlueprint(nameInput : HTMLInputElement) {
    this.blueprintCreated.emit({
      blueprintName     : nameInput.value,
      blueprintContent  : this.contentInput.nativeElement.value
    });
  }

  constructor() { }

  ngOnInit() {
  }

}
